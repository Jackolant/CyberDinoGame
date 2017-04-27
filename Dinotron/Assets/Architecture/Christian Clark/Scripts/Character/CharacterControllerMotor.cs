﻿using UnityEngine;
using System.Collections;

[RequireComponent(typeof(CharacterController))]
public class CharacterControllerMotor : CharacterMotor {

    //Floating point math introduces a lot of errors. Adjust the goal/value by a small
    //amount when measuring floating point values to make up for that error.
    private const float smallTolerance = 0.005f;

    /////////////////////////
    // Inspector Variables //
    /////////////////////////

    #region Inspector Variables
    [Header("[CharacterControllerMotor] Movement Settings")]

    [Tooltip("How long it takes to get up to Max Speed. Minimum value is Time.fixedDeltaTime * 2 (two frames). Is effected by how fast the move input itself gets to 100%.")]
    public float accelerationTime = 0.1f;
    [Tooltip("How long it takes to stop after going at Max Speed. Minimum value is Time.fixedDeltaTime * 2 (two frames).")]
    public float deccelerationTime = 0.1f;


    [Header("[CharacterControllerMotor] Surface Collision Settings")]
    [Tooltip("A surface with an incline equal to or above this number will be considered to be a wall. Wall detection caps out at Ceiling Angle.")]
    public float wallAngle = 80f;
    [Tooltip("A surface with an incline equal to or above this number will be considered to be a ceiling.")]
    public float ceilingAngle = 100f;

    /// <summary>
    /// When the player leaves the ground (and not by jumping) how far can they snap downwards in
    /// one update in order to stay on the ground?
    /// </summary>
    [Header("[CharacterControllerMotor ADVANCED] Ground Sticky Effect Settings")]
    [Tooltip("(Essentially inverse Step Limit) When the character leaves the ground (and not by jumping) how far can they snap downwards in one update in order to stay on the ground?  Does not need to be to anything bigger than 1 in most cases unless your speed is 100 or something (in which case set it to at least 3). Minimum value is 0.")]
    public float groundStickyDistance = 1f;

    [Tooltip("How long to disable the ground sticky effect when jumping or acted upon by an external force. Minimum value is Time.fixedDeltaTime * 2 (will work for at least 1 to 2 frames).")]
    public float groundStickyDisableDuration = 0.1f;
    float groundStickyDisabledUntilTime;
    #endregion

    //Variables used for caching.
    CharacterController characterController;
    Transform tr;
    Vector3 velocity = new Vector3();

    // Collision variables
    // There are four cases as to what kind of surface we are colliding with.
    // We are either: touching valid ground, touching a steep slope, touching a wall, or touching a ceiling.
    // In the case that we are touching a steep slope, but not touching valid ground. groundNormal and groundNormalAngle will equal slopeNormal and slopeNormalAngle


    bool isTouchingGround;
    /// <summary>
    /// Lags behind isGrounded by one update.
    /// Used for the edge cases of leaving the ground and landing on the ground.
    /// </summary>
    bool wasTouchingGround;

    private ControllerColliderHit groundStickyCollisionHit;
    private bool groundStickyMove;

    //Moving platform tracking information.
    //Transform platform;
    //Transform lastPlatform;
    //Matrix4x4 lastMatrix;

    //Variables to track the collection of new physics info.
    float newGroundAngle;

    /// <summary>
    /// Is the character considered to be grounded?
    /// </summary>
    public override bool IsTouchingGround { get { return isTouchingGround || wasTouchingGround; } }

    /// </summary>
    public override bool IsAirborne { get { return !IsTouchingGround; } }

    /// <summary>
    /// How fast the character is moving in meters per second.
    /// </summary>
    public override Vector3 Velocity { get { return velocity; } set { velocity = value; } }

    private bool started = false;

    // Use this for initialization
    void Start() {
        characterController = GetComponent<CharacterController>();
        tr = transform;

        //Physics math is not precise
        characterController.slopeLimit += smallTolerance;

        //Make sure the groundStickyEffect isn't prematurely disabled.
        groundStickyDisabledUntilTime = -groundStickyDisableDuration;

        started = true;
    }

    float CalculateJumpForce() {
        return Mathf.Sqrt(2 * gameCharacter.jumpHeight * gravity);
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////////
    // Fixed Update. Adjust the velocity of the character and let the physics engine handle moving it. //
    /////////////////////////////////////////////////////////////////////////////////////////////////////

    public override void Move(float deltaTime) {
        if (!started) {
            return;
        }
        //Debug.Log("New FixedUpdate");

        //Lets keep random forces caused by floating point errors and tiny physics action
        //from building up.
        if (velocity.magnitude < smallTolerance) {
            velocity = Vector3.zero;
        }

        //Create a copy of the moveInput variable since it is possible that we will be editting it directly right in the next step.
        Vector3 tempMoveInput = gameCharacter.moveInput;
        float inputMagnitude = tempMoveInput.magnitude;

        // Do not allow the character to walk up steep slopes and walls by clamping the input in that direction.
        ////////////////////////////////////////////////////////////////////////////////////////////////////////

        //// First we test to see if we are touching a steep slope and then we test to see if our input is pointing into said slope.
        //// The easiest way to do the latter test is to see if the input and the slope normal have a negative dot product.
        if (IsTouchingSteepSlope && Vector3.Dot(tempMoveInput, SteepSlopeNormal) < 0) {
            // Clamp the input vector to the surface of the slope by projecting onto the plane of a version of the slope normal that is completely horizontal.
            tempMoveInput = Vector3.ProjectOnPlane(tempMoveInput, Vector3.ProjectOnPlane(SteepSlopeNormal, Vector3.up));
        }

        //if (IsTouchingWall && Vector3.Dot(tempMoveInput, WallNormal) < 0) {
        //    //Debug.Log("Walking into wall!");
        //    tempMoveInput = Vector3.ProjectOnPlane(tempMoveInput, Vector3.ProjectOnPlane(WallNormal, Vector3.up));
        //}

        //This keeps the character from getting stuck when walking into the underside of a slope/ramp.
        if (IsTouchingCeiling && Vector3.Dot(tempMoveInput, CeilingNormal) < 0) {
            //Debug.Log("Walking into ceiling!");
            tempMoveInput = Vector3.ProjectOnPlane(tempMoveInput, Vector3.ProjectOnPlane(CeilingNormal, Vector3.up));
        }


        ////////////////////////////////////////////////////////////////////////////
        // Adjust variables to lay along the ground slope if we're on the ground. //
        ////////////////////////////////////////////////////////////////////////////

        //Input normal that lies along the slope, or just flat if we're in the air.
        Vector3 slopedInputNormal;
        //Get our velocity relative to the ground we're on, or just flat if we're in the air.
        Vector3 velocityProjectedOnSlope;
        //Get the speed we'll be using, it will be less if we're in the air.
        float effectiveSpeed;
        // Get the maxSpeed value we want to use.
        float effectiveMaxSpeed = (gameCharacter.IsSprinting) ? gameCharacter.sprintSpeed : gameCharacter.speed;

        if (IsTouchingGround) {
            slopedInputNormal = Vector3.Cross(Vector3.Cross(Vector3.up, tempMoveInput), GroundNormal);
            velocityProjectedOnSlope = Vector3.ProjectOnPlane(velocity, GroundNormal);
            effectiveSpeed = effectiveMaxSpeed;
        } else {
            // We are airborne

            slopedInputNormal = tempMoveInput;
            velocityProjectedOnSlope = Vector3.ProjectOnPlane(velocity, Vector3.up);
            effectiveSpeed = effectiveMaxSpeed * airControlPercentage;
        }



        //Get our velocity, but along the slopedInputNormal.
        Vector3 velocityAlongSlopedInput = Vector3.Project(velocity, slopedInputNormal);


        ///////////////////////////////////////////////////////////
        // Acceleration and Decceleration along the ground slope //
        ///////////////////////////////////////////////////////////

        float deccelSpeed = (effectiveSpeed / deccelerationTime) * deltaTime;
        float accelSpeed = (effectiveSpeed / accelerationTime) * deltaTime;
        float desiredSpeed = effectiveMaxSpeed * inputMagnitude;

        // Decceleration
        ////////////////

        Vector3 deccelerationChange = Vector3.zero;
        // Only apply decceleration if we're not completely stopped. (Remember, we completely stopped ourselves eariler if velocity.magnitude was below a small number.)
        if (velocity != Vector3.zero) {
            //Map deccelerationForce so that it applies to the slope we're on.
            Vector3 deccelerationForce = velocityProjectedOnSlope.normalized * deccelSpeed;

            // Test to see if our decceleration is supposed to completely kill our velocity.
            if (velocityProjectedOnSlope.sqrMagnitude <= deccelerationForce.sqrMagnitude) {
                // Works off of the idea that for a given variable a: a - a = 0
                deccelerationChange = -velocityProjectedOnSlope;
            } else if (velocityProjectedOnSlope.magnitude > effectiveMaxSpeed + smallTolerance) {
                // If we're going TOO FAST then apply both the deccelation AND the acceleration force.
                // This serves as a way to apply extra force to a direction that we're both going TOO FAST and are moving towards.
                // Meaning, we will go from double maxSpeed to just maxSpeed in accelerationTime if we're moving in that direction.
                // This can be interpreted as the character actively trying to slow down! Mainly it just solves a bug where you could pick up speed by just going in a tight circle.

                // Only apply extra dececeleration force if we're on steady ground (not on steep slope or in the air), but we do want to cap our max sliding speed.
                deccelerationChange = -deccelerationForce;
                if (IsTouchingGround && !IsStandingOnSteepSlope) {
                    deccelerationChange -= velocityProjectedOnSlope.normalized * accelSpeed;
                }
            } else {
                // Else, just apply the regular decceleration force.
                deccelerationChange = -deccelerationForce;
            }
        }
        // Apply Decceleration
        velocity += deccelerationChange;

        // Acceleration
        ///////////////

        Vector3 accelerationChange = Vector3.zero;
        // Only apply acceleration if there's input.
        if (gameCharacter.moveInput != Vector3.zero) {

            float force = accelSpeed;
            //Counteract the deccelleration force. Doing it here means that the counteracting is only in the direction we're moving.
            force += deccelSpeed;
            accelerationChange = slopedInputNormal * force;

            // Cap acceleration so that we won't go over maxSpeed.
            // Capping the acceleration applied instead of the speed means that the player
            // can be made to go faster than maxSpeed either by pushing or some other effect
            float currentSpeed = velocityAlongSlopedInput.magnitude;
            float newSpeed = currentSpeed + accelerationChange.magnitude;

            if (newSpeed > desiredSpeed + smallTolerance) {
                // Adjust our acceleration so that it will bring us exactly to the target max speed.
                // Also we still need to apply the decceleration counter force, but this formula lets it apply only part of that force if need be.
                newSpeed = (desiredSpeed - currentSpeed) + deccelSpeed;

                // If this goes into the negatives, don't apply any force at all and let the decceleration handle getting us back down to the right speed.
                newSpeed = Mathf.Max(newSpeed, 0);

                accelerationChange = accelerationChange.normalized * newSpeed;
                accelerationChange.y = 0; //Technically the character controller would handle being bumped up the slope, but I want that upwards movement factored into the velocity.
                
            }

        }

        //Apply acceleration change.
        velocity += accelerationChange;

        //Debug.Log("Deccel: " + deccelerationChange.ToString() + "\n" + "Accel:" + accelerationChange.ToString());

        /////////////////////////
        // Jumping and Gravity //
        /////////////////////////

        //Jumping
        if (gameCharacter.jumpInput) {
            //Consume the jump input on the first fixed update it's read in.
            gameCharacter.jumpInput = false;

            if (IsTouchingGround && !IsStandingOnSteepSlope) {
                Vector3 jumpForce = Vector3.up;
                velocity.y = 0;
                velocity += jumpForce * CalculateJumpForce();
                isTouchingGround = false;
                wasTouchingGround = false;
                TemporarilyDisableGroundStickyEffect();
            }
        }

        //Apply gravity and slope sliding forces

        if (IsTouchingGround) {
            // If we're on the ground, apply gravity such that it sticks us to the slope.
            velocity -= (gravity * deltaTime) * GroundNormal;
        }

        if ((IsStandingOnSteepSlope || IsTouchingWall) && velocity.y < 0) {
            Vector3 normal = SteepSlopeNormal;
            if (SteepSlopeNormal == Vector3.zero) {
                normal = WallNormal;
            }

            velocity += Vector3.ProjectOnPlane(Vector3.down, normal) * ((gravity * deltaTime) + deccelSpeed);

            // But lets not go downwards too fast! Though lets check if we're going downwards first before we cap
            // sliding speed.
            if (!IsTouchingWall) {
                if (velocity.y < 0) {
                    velocity = Vector3.ClampMagnitude(velocity, maxSlideSpeed);
                }
            } else {
                if (velocity.y < -terminalVelocity) {
                    velocity.y = -terminalVelocity;
                }
            }
        }

        if (IsAirborne && !IsTouchingWall) {
            // Apply normal gravity;
            velocity.y -= gravity * deltaTime;

            //Limit falling speed
            if (velocity.y < -terminalVelocity) {
                velocity.y = -terminalVelocity;
            }
        }

        //////////////////////////////////////////////
        // Automatic Rotation to Movement Direction //
        //////////////////////////////////////////////

        Quaternion rotationTarget = Quaternion.identity;
        //Rotate the way we're moving towards!
        if (enableAutoRotation && gameCharacter.moveInput.magnitude >= smallTolerance) {
            rotationTarget = Quaternion.FromToRotation(Vector3.forward, gameCharacter.moveInput);
            rotationTarget.eulerAngles = new Vector3(0, rotationTarget.eulerAngles.y, 0);
            tr.rotation = Quaternion.RotateTowards(tr.rotation, rotationTarget, autoRotationSpeed * deltaTime);
        }

        ////////////////////////////////////////////////////////////
        // Reset collision variables to finish off pre-move logic //
        ////////////////////////////////////////////////////////////

        // Reset the variables for ground collision
        ///////////////////////////////////////////

        //Only erase the ground information AFTER we're sure we're not grounded anymore.
        if (!IsTouchingGround) {
            GroundNormal = Vector3.zero;
            GroundNormalAngle = -1;
        }

        //Set this variable back to the "erased" position because there might be a new,
        //more level ground normal in the next move update.
        newGroundAngle = -1;

        //Keep track if we were grounded during the last update
        wasTouchingGround = isTouchingGround;
        isTouchingGround = false;

        // Reset the variables for slope, wall, and ceiling.
        ////////////////////////////////////////////////////
        SteepSlopeNormal = Vector3.zero;
        SteepSlopeNormalAngle = -1;
        IsTouchingSteepSlope = false;
        IsStandingOnSteepSlope = false;

        WallNormal = Vector3.zero;
        WallNormalAngle = -1;
        IsTouchingWall = false;

        CeilingNormal = Vector3.zero;
        CeilingNormalAngle = -1;
        IsTouchingCeiling = false;

        groundStickyCollisionHit = null;

        ////////////////////////////////////
        // Move the Character Controller! //
        ////////////////////////////////////

        groundStickyMove = false;
        characterController.Move((velocity * deltaTime));

        //Ground sticky effect.
        if (!isTouchingGround && wasTouchingGround && (Time.time > groundStickyDisabledUntilTime)) {
            Vector3 originalPosition = tr.position;

            Vector3 groundStickyForce = Vector3.down * groundStickyDistance;
            groundStickyMove = true;
            characterController.Move(groundStickyForce);

            // Counteract the movement from the ground sticky force if we didn't actually hit any ground or if the ground we hit was too steep.
            if (groundStickyCollisionHit == null) {
                tr.position = originalPosition;
            } else {
                float angle = Vector3.Angle(Vector3.up, groundStickyCollisionHit.normal);

                if (angle > characterController.slopeLimit) {
                    tr.position = originalPosition;
                    return;
                }

                //If we went over a peak then we want to kill our velocity, otherwise going down really fast should stay the same.
                velocity = new Vector3(velocity.x, Mathf.Min(0, velocity.y), velocity.z);

                //We DID just put ourselves back on the ground.
                //So update the groundNormal information.
                isTouchingGround = true;
                GroundNormal = groundStickyCollisionHit.normal;
                GroundNormalAngle = angle;
            }
        }

        /////////////////////
        // Post-Move Logic //
        /////////////////////

        if (IsTouchingSteepSlope && GroundNormalAngle == SteepSlopeNormalAngle) {
            IsStandingOnSteepSlope = true;
        }
    }


    ///////////////////////////////
    // Collision Events/Messages //
    ///////////////////////////////

    void OnControllerColliderHit(ControllerColliderHit hit) {
        if (!groundStickyMove) {
            OnMoveHit(hit);
        } else {
            // Keep track if we hit anything going down.
            if (groundStickyCollisionHit == null) {
                groundStickyCollisionHit = hit;
            } else if (hit.point.y < groundStickyCollisionHit.point.y) {
                groundStickyCollisionHit = hit;
            }
        }
    }

    void OnMoveHit(ControllerColliderHit hit) {
        //groundNormal = contact.normal;

        //Debug.Log(velocity + " | " + (-contact.normal) + " | " + Vector3.Angle(velocity, -contact.normal));

        //If we're not moving towards the contact point, don't count it as valid ground or wall or anything.
        //if (Vector3.Angle(rb.velocity, -contact.normal) >= 120) {
        //    Debug.Log(Vector3.Angle(rb.velocity, -contact.normal));
        //    continue;
        //}

        //Get the slope angle of the contact normal
        float angle = Vector3.Angle(Vector3.up, hit.normal);

        //If we hit something, then we should not be moving into that something.
        if (Vector3.Dot(velocity, hit.normal) < 0) {
            velocity = Vector3.ProjectOnPlane(velocity, hit.normal);
        }

        /////////////////////////////////////////////////////////////
        // Determine if we're touching ground, wall, or a ceiling. //
        /////////////////////////////////////////////////////////////

        //Test to see if we're standing on ground.

        if (angle <= (wallAngle - smallTolerance) && (newGroundAngle == -1 || angle < newGroundAngle)) {
            isTouchingGround = true;

            //Get the flattest ground angle.
            if ((newGroundAngle == -1 || angle < newGroundAngle)) {
                GroundNormal = hit.normal;
                GroundNormalAngle = angle;
                newGroundAngle = angle;
            }

            //Test to see if we're standing on a steep slope.
            //Get the flattest steep slope angle
            if (angle > (characterController.slopeLimit) && (SteepSlopeNormalAngle == -1 || angle < SteepSlopeNormalAngle)) {
                SteepSlopeNormal = hit.normal;
                SteepSlopeNormalAngle = angle;
                IsTouchingSteepSlope = true;
            }
        }
                
        //Test to see if we're touching a wall.
        //Get the steepest wall angle
        if (angle <= (ceilingAngle + smallTolerance) && angle > (wallAngle - smallTolerance) && (WallNormalAngle == -1 || angle > WallNormalAngle)) {
            WallNormal = hit.normal;
            WallNormalAngle = angle;
            IsTouchingWall = true;
        }

        //Test to see if we're touching a ceiling (aka, we're colliding with something that's above us!)
        //Get the largest ceiling angle which is technically the shallowest angle.
        if (angle > (ceilingAngle + smallTolerance) && (CeilingNormalAngle == -1 || angle > CeilingNormalAngle)) {
            CeilingNormal = hit.normal;
            CeilingNormalAngle = angle;
            IsTouchingCeiling = true;
        }
    }

    /// <summary>
    /// Use this if you need the dino to be able to run off the edge of something without trying to stick to the ground.
    /// Internally called when the dino jumps.
    /// </summary>
    public void TemporarilyDisableGroundStickyEffect() {
        groundStickyDisabledUntilTime = Time.time + groundStickyDisableDuration;
    }


    //Only include code when compling for Editor builds.
#if UNITY_EDITOR
    //Make sure bugs/weird behaviours aren't introduced by incorrect values when people are tweaking things.
    public void OnValidate() {
        accelerationTime = Mathf.Max(Time.fixedDeltaTime * 2, accelerationTime);
        deccelerationTime = Mathf.Max(Time.fixedDeltaTime * 2, deccelerationTime);
        airControlPercentage = Mathf.Clamp01(airControlPercentage);
        groundStickyDistance = Mathf.Max(0, groundStickyDistance);
        groundStickyDisableDuration = Mathf.Max(Time.fixedDeltaTime * 2, groundStickyDisableDuration);
    }


    //
    // DEBUG INFO
    //

    float fps = 0;
    float fpsChange = 0;
    void Update() {
        fps = Mathf.SmoothDamp(fps, (Time.deltaTime), ref fpsChange, 0.15f);
    }

    [Header("[DEBUG]")]
    public bool showDebugInfo = false;
    public bool showCollisionInfo = false;

    void OnGUI() {
        if (showDebugInfo) {
            GUILayout.BeginVertical("box", GUILayout.MinWidth(275));
            {
                GUILayout.Label("CController Velocity: " + velocity.ToString() + " | " + (Mathf.Round(velocity.magnitude * 100) / 100));
                GUILayout.Label("MPH: " + ((Mathf.Round(velocity.magnitude * 100) / 100) * 2.23694f));
                GUILayout.Label("Fixed UPS: " + 1 / Time.fixedDeltaTime);
                GUILayout.Label("FPS: " + (1 / fps).ToString("F2") + " (" + (1 / Time.deltaTime).ToString("F2") + ")");
                if (showCollisionInfo) {
                    GUILayout.Label(" Ground Normal: " + GroundNormal.ToString());
                    GUILayout.Label("         Angle: " + GroundNormalAngle);
                    GUILayout.Label("          Flag: " + isTouchingGround + " was " + wasTouchingGround);
                    GUILayout.Label("  Slope Normal: " + SteepSlopeNormal.ToString());
                    GUILayout.Label("         Angle: " + SteepSlopeNormalAngle);
                    GUILayout.Label("          Flag: " + IsTouchingSteepSlope + " on " + IsStandingOnSteepSlope);
                    GUILayout.Label("   Wall Normal: " + WallNormal.ToString());
                    GUILayout.Label("         Angle: " + WallNormalAngle);
                    GUILayout.Label("          Flag: " + IsTouchingWall);
                    GUILayout.Label("Ceiling Normal: " + CeilingNormal.ToString());
                    GUILayout.Label("         Angle: " + CeilingNormalAngle);
                    GUILayout.Label("          Flag: " + IsTouchingCeiling);
                }
            }
            GUILayout.EndVertical();
        }
    }
#endif
}