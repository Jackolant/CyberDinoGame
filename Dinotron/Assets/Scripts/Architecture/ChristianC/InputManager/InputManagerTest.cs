using UnityEngine;
using System.Collections;

//This class exists to register many different kinds of input to the InputManager to make sure the latter works.
// Also serves as an example of how to use the InputManager.
public class InputManagerTest : MonoBehaviour {

	void OnEnable () {

        //Show getting each axis separately and as part of the same delegate!
        InputManager.AddAxisDelegate("Horizontal", DummyAxis);
        InputManager.AddAxisDelegate("Vertical", DummyAxis);
        InputManager.AddAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D);

        //This will count as pressed when you press down the right Trigger!
        InputManager.AddAxisDelegate("Fire1", DummyAxis);
        InputManager.AddButtonDelegate("Fire1", ButttonStateTracker);

        //Test out the DPad buttons with a lower threshold so they work properly.
        InputManager.AddAxis2DDelegate("DPadRight", "DPadUp", DummyAxis2D);
        InputManager.AddButtonDelegate("DPadRight", 0.5f, DummyButton);
        InputManager.AddButtonDelegate("DPadLeft", 0.5f, DummyButton);
        InputManager.AddButtonDelegate("DPadUp", 0.5f, DummyButton);
        InputManager.AddButtonDelegate("DPadDown", 0.5f, DummyButton);

        //Extra delegates for testing purposes
        InputManager.AddAxisDelegate("Horizontal", DummyAxis2);
        InputManager.AddAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D2);
        InputManager.AddButtonDelegate("Fire1", 0.01f, DummyButton2);

        InputManager.AddAxisDelegate("Horizontal", DummyAxis3);
        InputManager.AddAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D3);
        InputManager.AddButtonDelegate("Fire1", DummyButton3);

        InputManager.AddButtonDelegate("Fire1", FireGuns);
    }
#if UNITY_EDITOR
    void Awake() {
        InputManager manager = (FindObjectOfType<InputManager>() as InputManager);
        if (manager) {
            manager.showDebugInfo = true;
        }
    }
#endif

    void OnDisable() {
        InputManager.RemoveAxisDelegate("Horizontal", DummyAxis);
        InputManager.RemoveAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D);
        InputManager.RemoveButtonDelegate("Fire1", ButttonStateTracker);

        InputManager.RemoveButtonDelegate("DPadUp", 0.5f, DummyButton);
        InputManager.RemoveButtonDelegate("DPadDown", 0.5f, DummyButton);
        InputManager.RemoveButtonDelegate("DPadRight", 0.5f, DummyButton);
        InputManager.RemoveButtonDelegate("DPadLeft", 0.5f, DummyButton);

        InputManager.RemoveAxisDelegate("Vertical", DummyAxis);
        InputManager.RemoveAxisDelegate("Fire1", DummyAxis);
        InputManager.RemoveAxis2DDelegate("DPadRight", "DPadUp", DummyAxis2D);

        //Extra delegates for testing purposes
        InputManager.RemoveAxisDelegate("Horizontal", DummyAxis2);
        InputManager.RemoveAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D2);
        InputManager.RemoveButtonDelegate("Fire1", 0.01f, DummyButton2);

        InputManager.RemoveAxisDelegate("Horizontal", DummyAxis3);
        InputManager.RemoveAxis2DDelegate("Horizontal", "Vertical", DummyAxis2D3);
        InputManager.RemoveButtonDelegate("Fire1", DummyButton3);

        InputManager.RemoveButtonDelegate("Fire1", FireGuns);
    }


    void DummyAxis(float f) { }

    void DummyAxis2D(float h, float v) { }

    void DummyButton(ButtonState state) { }

    void DummyAxis2(float f) { }

    void DummyAxis2D2(float h, float v) { }

    void DummyButton2(ButtonState state) { }

    void DummyAxis3(float f) { }

    void DummyAxis2D3(float h, float v) { }

    void DummyButton3(ButtonState state) { }

    float[] states = new float[4];
    void ButttonStateTracker(ButtonState state) {
        if (state.Pressed) {
            states[0] = Time.time;
        }
        if (state.Held) {
            states[1] = Time.time;
        }
        if (state.Released) {
            states[2] = Time.time;
        }
        if (state.NotHeld) {
            states[3] = Time.time;
        }

    }

    void FireGuns(ButtonState state) {
        if (state.Held) {
            Debug.Log("FIRING MY GUN!");
        }
    }

    void OnGUI() {
        GUILayout.BeginVertical("box");
        GUILayout.Label("Fire1 State Tracker:");
        GUILayout.Label("Pressed Last Time: " + states[0]);
        GUILayout.Label("Held Last Time: " + states[1]);
        GUILayout.Label("Released Last Time: " + states[2]);
        GUILayout.Label("NotHeld Last Time: " + states[3]);
        GUILayout.EndVertical();
    }
}
