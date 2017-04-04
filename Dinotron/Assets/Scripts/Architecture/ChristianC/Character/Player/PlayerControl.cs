using UnityEngine;
using System.Collections;

[RequireComponent(typeof(RigidbodyMotor))]
public class PlayerControl : MonoBehaviour {

    public int playerNumber = 1;
    private Transform tr;

    [Tooltip("The camera that the player is using. This script bases input on the rotation and position of this camera.")]
    public PlayerOrbitCamera playerCamera;
    private Transform cameraTransform;

    public GameCharacter dino;
    public float maxAimRaycastDistance = 1000f;

    public PlayerInputConfig inputConfig;

	// Use this for initialization
	void Start () {
        tr = transform;
        cameraTransform = playerCamera.transform;
    }

    void OnEnable () {
        InputManager.AddAxis2DDelegate(inputConfig.moveHorizontalInput, inputConfig.moveVerticalInput, MoveInput);
        InputManager.AddButtonDelegate(inputConfig.jumpInput, JumpInput);
        InputManager.AddButtonDelegate(inputConfig.sprintInput, SprintInput);
        InputManager.AddButtonDelegate(inputConfig.fireInput, FireInput);
    }

    void OnDisable() {
        InputManager.RemoveAxis2DDelegate(inputConfig.moveHorizontalInput, inputConfig.moveVerticalInput, MoveInput);
        InputManager.RemoveButtonDelegate(inputConfig.jumpInput, JumpInput);
        InputManager.RemoveButtonDelegate(inputConfig.sprintInput, SprintInput);
        InputManager.RemoveButtonDelegate(inputConfig.fireInput, FireInput);
    }

    private void MoveInput(float horz, float vert) {
        if (cameraTransform) {
            dino.moveInput.x = horz;
            dino.moveInput.z = vert;
        
            if (!dino.IsSprinting) {
                //Allow for walking slowly when the joystick isn't being pushed to the edge
                dino.moveInput *= dino.moveInput.magnitude;
                dino.moveInput *= 3;

                if (dino.moveInput.magnitude > 1f) {
                    dino.moveInput.Normalize();
                }
            } else {
                dino.moveInput.Normalize();
            }
        
            Quaternion rotation = Quaternion.Euler(0, cameraTransform.rotation.eulerAngles.y, 0);
            dino.moveInput = rotation * dino.moveInput;
        }
    }

    private void JumpInput(ButtonState button) {
        if (!dino.jumpInput && button.Pressed) {
            dino.jumpInput = true;
        }
    }

    private void SprintInput(ButtonState button) {
        if (dino.motor.IsTouchingGround) {
            dino.sprintInput = button.Held;
        }
    }

    private void FireInput(ButtonState button) {
        dino.fireInput = button.Held;
    }


    private void Update() {
        //Aim our weapon!
        Vector3 startPoint = tr.position + playerCamera.targetOffset;
        RaycastHit[] hits = Physics.RaycastAll(startPoint, cameraTransform.forward, maxAimRaycastDistance, PlayerManager.GetPlayerAimMask());
        Vector3 aimPoint = Vector3.zero;
        if (hits.Length > 0) {
            foreach (RaycastHit hit in hits) {
                if (!hit.transform.IsChildOf(tr)) {
                    aimPoint = hit.point;
                }
            }
        } else {
            aimPoint = startPoint + (cameraTransform.forward * maxAimRaycastDistance);
        }

        dino.aimPoint = aimPoint;
    }
}
