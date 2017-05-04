using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

/// <summary>
/// At the moment any Motor implemented must:
/// Properly update all public properites everytime the Move function is called.
/// It should:
/// Make the character slide down steep slopes when it stands on them.
/// </summary>
[RequireComponent(typeof(GameCharacter))]
public abstract class CharacterMotor : MonoBehaviour {

    public GameCharacter gameCharacter;
    [Tooltip("Can the character automatically rotate to match their input direction?")]
    public bool enableAutoRotation = true;
    [Tooltip("How fast the character rotates to face the direction they're moving in. Degrees per second.")]
    public float autoRotationSpeed = 360f;
    [Tooltip("How much control the player has over their air movement. Effects how fast they can accelerate and stop in the air. Value is clamped from 0% to 100%.")]
    public float airControlPercentage = 1f;
    [Tooltip("The force of gravity on the character. Meters per second")]
    public float gravity = 10f;
    [Tooltip("The top speed the character can fall at. Set this high, but not too high as this mainly serves as a way to stop the player from tunneling through the floor.")]
    public float terminalVelocity = 60f;
    [Tooltip("The top speed a character can get while sliding down a steep slope.")]
    public float maxSlideSpeed = 50f;

    #region Properties
    /// <summary>
    /// Is the character considered to be grounded?
    /// </summary>
    public virtual bool IsTouchingGround { get; protected set; }

    /// <summary>
    /// The normal of the ground the character is standing on. Returns Vector3.zero if the character is not standing on any ground.
    /// </summary>
    public virtual Vector3 GroundNormal { get; protected set; }

    /// <summary>
    /// The angle of the normal of the ground the character is standing on. Returns -1 if the character is not standing on any ground.
    /// </summary>
    public virtual float GroundNormalAngle { get; protected set; }

    /// <summary>
    /// Is the character standing on a steep slope? As in, is that the only ground that they're standing on?
    /// </summary>
    public virtual bool IsStandingOnSteepSlope { get; protected set; }

    /// <summary>
    /// Is the character in contact with a slope that is too steep? Does not mean that they are standing only on said slope. They could be standing on the ground AND touching the steep slope.
    /// </summary>
    public virtual bool IsTouchingSteepSlope { get; protected set; }

    /// <summary>
    /// The normal of the steep slope the character is in contact with. Returns Vector3.zero if they are not in contact with any steep slopes.
    /// </summary>
    public virtual Vector3 SteepSlopeNormal { get; protected set; }

    /// <summary>
    /// The angle of the nomral of the steep slope the character is in contact with. Returns -1 if they are no tin contact with any steep slopes.
    /// </summary>
    public virtual float SteepSlopeNormalAngle { get; protected set; }

    /// <summary>
    /// Is the character in contact with a wall?
    /// </summary>
    public virtual bool IsTouchingWall { get; protected set; }

    /// <summary>
    /// The normal of the wall the character is in contact with. Returns Vector3.zero if the character is not in contact with any walls.
    /// </summary>
    public virtual Vector3 WallNormal { get; protected set; }

    /// <summary>
    /// The angle of the normal of the wall the character is in contact with. Returns -1 if the character is not in contact with any walls.
    /// </summary>
    public virtual float WallNormalAngle { get; protected set; }

    /// <summary>
    /// Is the character touching a ceiling? (They probably won't be for long though as gravity will pull them down.)
    /// </summary>
    public virtual bool IsTouchingCeiling { get; protected set; }

    /// <summary>
    /// The normal of the ceiling that the character is in contact with. Returns Vector3.zero if the character is not in contact with any ceilings.
    /// </summary>
    public virtual Vector3 CeilingNormal { get; protected set; }

    /// <summary>
    /// The angle of the ceiling that the character is in contact with. Returns -1 if the character is not in contact with any ceilings.
    /// </summary>
    public virtual float CeilingNormalAngle { get; protected set; }

    /// <summary>
    /// Is the character airborne? That is, are they rising or falling freely through the air?
    /// </summary>
    public virtual bool IsAirborne { get; protected set; }

    /// <summary>
    /// How fast the character is moving in meters per second.
    /// </summary>
    public virtual Vector3 Velocity { get; set; }
    #endregion

    public abstract void Move(float fixedDeltaTime);
}
