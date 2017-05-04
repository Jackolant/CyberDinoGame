using UnityEngine;
using System.Collections;

//Sets the target FPS (default 90) as well as keeps track a running track of the game's reported alpha time and displays it on screen.
public class FPSCounter : MonoBehaviour {

    public int targetFrameRate = 90;

    void Start() {
        Application.targetFrameRate = targetFrameRate;
        QualitySettings.vSyncCount = 0;

        fps = 1f / (float) targetFrameRate;
    }

    float fps = 0;	
	// Update is called once per frame
	void Update () {
        fps = ((fps * 49f) + Time.deltaTime) / 50f;
	}

    void OnGUI() {
        GUILayout.BeginArea(new Rect(Screen.width - 100, 0, 100, 100));
        GUILayout.BeginVertical("Box");
        GUILayout.Label("FPS: " + (1 / fps).ToString());
        GUILayout.Label("Fixed FPS: " + (1 / Time.fixedDeltaTime).ToString());
        GUILayout.EndVertical();
        GUILayout.EndArea();
    }
}
