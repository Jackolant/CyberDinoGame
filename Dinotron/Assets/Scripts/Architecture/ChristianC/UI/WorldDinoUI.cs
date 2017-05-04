using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class WorldDinoUI : DinoUI {

    public int dinoPlayerNumber = 1;
    private Transform cameraTransform;
    private Transform tr;

    public Vector3 offset = new Vector3(0, 2, 0);

	// Use this for initialization
	public override void Start () {
        base.Start();
        cameraTransform = playerCamera.transform;
        tr = transform;
	}

    protected override void SetupCanvas() {
        canvas.renderMode = RenderMode.WorldSpace;
        canvas.worldCamera = playerCamera;
    }

    void OnValidate() {
        if (gameObject.activeInHierarchy) {
            if (Application.isPlaying) {
                cameraTransform = playerCamera.transform;
            } else {
                transform.localPosition = offset;
            }
        }
    }
	
	// Update is called once per frame
	void LateUpdate () {
        //Turns out the best way to get a GUI to face the camera is to simply match the camera's world rotation.
        tr.localPosition = offset;
        tr.rotation = cameraTransform.rotation;
	}
}
