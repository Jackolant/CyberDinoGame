using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Camera))]
public class PlayerOrbitCamera : MonoBehaviour {

    public PlayerControl playerControl;
    public Transform target;
    public Vector3 targetOffset = new Vector3(0, 3, 0);

    public float distance = 10f;

    public bool invertVerticalAxis = false;
    private float horzInput = 0;
    private float vertInput = 0;

    public float horizontalSpeed = 120f;
    public float verticalSpeed = 120f;

    public float minimumVerticalAngle = -60f;
    public float maximumVerticalAngle = 80f;

    public float cameraCollisionRadius = 0.25f;

    private float horizontalAngle;
    private float verticalAngle;

    private Transform tr;

	// Use this for initialization
	void Start () {
        tr = transform;
        horizontalAngle = tr.eulerAngles.y;
        verticalAngle = tr.eulerAngles.x;

        Cursor.lockState = CursorLockMode.Locked;
	}

    void OnEnable() {
        InputManager.AddAxis2DDelegate(playerControl.inputConfig.lookHorizontalInput, playerControl.inputConfig.lookVerticalInput, LookInput);
    }

    void OnDisable() {
        InputManager.RemoveAxis2DDelegate(playerControl.inputConfig.lookHorizontalInput, playerControl.inputConfig.lookVerticalInput, LookInput);
    }

    void LookInput(float horz, float vert) {
        horzInput = horz;
        vertInput = vert;
    }

	
	// Update is called once per frame
	void LateUpdate () {
        if (target) {

            Vector3 targetPosition = target.position + (target.rotation * targetOffset);

            horizontalAngle += horzInput * horizontalSpeed * Time.deltaTime;
            verticalAngle -= ((invertVerticalAxis) ? -1 : 1) * vertInput * verticalSpeed * Time.deltaTime;

            verticalAngle = Mathf.Clamp(verticalAngle, minimumVerticalAngle, maximumVerticalAngle);

            float actualDistance = distance;
            Ray rayToSelf = new Ray(targetPosition, tr.position - targetPosition);
            RaycastHit hit;
            if (Physics.SphereCast(rayToSelf, cameraCollisionRadius, out hit, distance)) {
                actualDistance = distance - (distance - hit.distance);
            }

            Quaternion newRotation = Quaternion.Euler(verticalAngle, horizontalAngle, 0);
            Vector3 newPosition = newRotation * (Vector3.back * actualDistance) + (target.position + targetOffset);

            tr.rotation = newRotation;
            tr.position = newPosition;
        }
	}
}
