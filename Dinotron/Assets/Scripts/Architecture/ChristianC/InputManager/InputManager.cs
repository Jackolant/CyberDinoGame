using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

// Use this class statically to subscribe to Input events once per Update().
// use:
// inside OnEnable()
//      InputManager.AddAxisDelegate(string nameOfAxisInTheProjectSettings, function that takes a float);
//      InputManager.AddAxis2DDelegate(string horzAxis, string vertAxis, function that takes two floats);
//      InputManager.AddButtonDelegate(string nameOfButtonInTheProjectSettings, function that takes a ButtonState object);
// inside OnDisable()
//      InputManager.RemoveAxisDelegate(string nameOfAxisInTheProjectSettings, function that takes a float);
//      InputManager.RemoveAxis2DDelegate(string horzAxis, string vertAxis, function that takes two floats);
//      InputManager.RemoveButtonDelegate(string nameOfButtonInTheProjectSettings, function that takes a ButtonState object);
//
// There is also an advanced usage with AddButtonDelegate(string axisName, float axisThreshold, funtion that takes a ButtonState object)
// This allows you to register an axis and recieve button events for it when it passes the axisThreshold. Set the threshold to a negative value to read the axis going in the other direction.
// In fact this is how all buttons work, inside this script. The first funcion signature just uses a default axisTolerance settings.
public class InputManager : MonoBehaviour {

    public delegate void AxisDelegate(float value);
    public delegate void Axis2DDelegate(float horizontal, float vertical);
    public delegate void ButtonDelegate(ButtonState state);

    const float DEFAULT_AXIS_AS_BUTTON_TRESHOLD = 0.95f;

    //Due to the lack of the Tuple data type, we must use our own data types tha store all the data we need inside of the dictionaries.
    private class Axis2DDelegateKey {
        public readonly string inputHorizontal;
        public readonly string inputVertical;

        public override bool Equals(object obj) {
            if (!(obj is Axis2DDelegateKey)) {
                return false;
            } else {
                Axis2DDelegateKey other = (Axis2DDelegateKey)obj;
                return (inputHorizontal.Equals(other.inputHorizontal) && inputVertical.Equals(other.inputVertical));
            }
        }

        public override int GetHashCode() {
            return inputHorizontal.GetHashCode() * inputVertical.GetHashCode();
        }

        public Axis2DDelegateKey(string inputHorizontal, string inputVertical) {
            this.inputHorizontal = inputHorizontal;
            this.inputVertical = inputVertical;
        }
    }

    private class ButtonDelegateKey {
        public readonly string inputName;
        public readonly float axisAsButtonThreshold;

        public override bool Equals(object obj) {
            if (!(obj is ButtonDelegateKey)) {
                return false;
            } else {
                ButtonDelegateKey other = (ButtonDelegateKey)obj;
                return (inputName.Equals(other.inputName) && axisAsButtonThreshold == other.axisAsButtonThreshold);
            }
        }

        public override int GetHashCode() {
            return inputName.GetHashCode() * axisAsButtonThreshold.GetHashCode();
        }
        
        public ButtonDelegateKey(string inputName, float axisAsButtonThreshold) {
            this.inputName = inputName;
            this.axisAsButtonThreshold = axisAsButtonThreshold;
        }
    }

    private class ButtonDelegateEntry {
        public ButtonDelegate buttonDelegate;
        public bool lastState;

        public ButtonDelegateEntry(ButtonDelegate buttonDelegate) {
            this.buttonDelegate = buttonDelegate;
            lastState = false;
        }
    }

    private static readonly Dictionary<string, AxisDelegate> dictAxisDelegates = new Dictionary<string, AxisDelegate>();
    private static readonly Dictionary<Axis2DDelegateKey, Axis2DDelegate> dictAxis2DDelegates = new Dictionary<Axis2DDelegateKey, Axis2DDelegate>();
    private static readonly Dictionary<ButtonDelegateKey, ButtonDelegateEntry> dictButtonDelegates = new Dictionary<ButtonDelegateKey, ButtonDelegateEntry>();

    private static InputManager instance;
    private bool isInstance = false;

    // Use lazy initalization, but only when the application is not qutting suddenly.
    private static void InstantiateInstance() {
        if (isApplicationQuitting)
            return;

        if (instance == null) {
            //First see if there's an instance in the scene we an use
            instance = FindObjectOfType<InputManager>();

            //If there's not, then we make our own instance.
            if (instance == null) {
                GameObject gameObject = new GameObject("Input Manager");
                instance = gameObject.AddComponent<InputManager>();
            }

            //Make sure it persists across scenes.
            DontDestroyOnLoad(instance);
            instance.isInstance = true;
        }
    }
    private static bool isApplicationQuitting;

    public static void AddAxisDelegate(string inputName, AxisDelegate axisDelegate) {
        if (isApplicationQuitting)
            return;

        if (instance == null) {
            InstantiateInstance();
        }

        if (!dictAxisDelegates.ContainsKey(inputName)) {
            dictAxisDelegates.Add(inputName, axisDelegate);
        } else {
            dictAxisDelegates[inputName] += axisDelegate;
        }
    }

    public static void RemoveAxisDelegate(string inputName, AxisDelegate axisDelegate) {
        if (isApplicationQuitting || (instance == null))
            return;

        if (dictAxisDelegates.ContainsKey(inputName)) {
            AxisDelegate dictDelegate = dictAxisDelegates[inputName];
            dictDelegate -= axisDelegate;

            if (dictDelegate == null) {
                dictAxisDelegates.Remove(inputName);
            } else {
                dictAxisDelegates[inputName] = dictDelegate;
            }
        }
    }

    public static void AddAxis2DDelegate(string inputHorizontal, string inputVertical, Axis2DDelegate axis2DDelegate) {
        if (isApplicationQuitting)
            return;

        if (instance == null) {
            InstantiateInstance();
        }

        Axis2DDelegateKey key = new Axis2DDelegateKey(inputHorizontal, inputVertical);

        if (!dictAxis2DDelegates.ContainsKey(key)) {
            dictAxis2DDelegates.Add(key, axis2DDelegate);
        } else {
            dictAxis2DDelegates[key] += axis2DDelegate;
        }
    }

    public static void RemoveAxis2DDelegate(string inputHorizontal, string inputVertical, Axis2DDelegate axis2DDelegate) {
        if (isApplicationQuitting || (instance == null))
            return;

        Axis2DDelegateKey key = new Axis2DDelegateKey(inputHorizontal, inputVertical);

        if (dictAxis2DDelegates.ContainsKey(key)) {
            Axis2DDelegate dictDelegate = dictAxis2DDelegates[key];
            dictDelegate -= axis2DDelegate;

            if (dictDelegate == null) {
                dictAxis2DDelegates.Remove(key);
            } else {
                dictAxis2DDelegates[key] = dictDelegate;
            }
        }
    }

    public static void AddButtonDelegate(string inputName, ButtonDelegate buttonDelegate) {
        AddButtonDelegate(inputName, DEFAULT_AXIS_AS_BUTTON_TRESHOLD, buttonDelegate);
    }

    public static void AddButtonDelegate(string inputName, float axisAsButtonThreshold, ButtonDelegate buttonDelegate) {
        if (isApplicationQuitting)
            return;

        if (instance == null) {
            InstantiateInstance();
        }

        ButtonDelegateKey key = new ButtonDelegateKey(inputName, axisAsButtonThreshold);
        
        if (!dictButtonDelegates.ContainsKey(key)) {
            ButtonDelegateEntry entry = new ButtonDelegateEntry(buttonDelegate);
            dictButtonDelegates.Add(key, entry);
        } else {
            dictButtonDelegates[key].buttonDelegate += buttonDelegate;
        }
    }

    public static void RemoveButtonDelegate(string inputName, ButtonDelegate buttonDelegate) {
        RemoveButtonDelegate(inputName, DEFAULT_AXIS_AS_BUTTON_TRESHOLD, buttonDelegate);
    }

    public static void RemoveButtonDelegate(string inputName, float axisAsButtonThreshold, ButtonDelegate buttonDelegate) {
        if (isApplicationQuitting || (instance == null))
            return;

        ButtonDelegateKey key = new ButtonDelegateKey(inputName, axisAsButtonThreshold);
        if (dictButtonDelegates.ContainsKey(key)) {
            ButtonDelegateEntry dictEntry = dictButtonDelegates[key];
            dictEntry.buttonDelegate -= buttonDelegate;

            if (dictEntry.buttonDelegate == null) {
                dictButtonDelegates.Remove(key);
            }
        }
    }

    void OnApplicationQuit() {
        isApplicationQuitting = true;
    }
	
	// Update is called once per frame
	void Update () {
        if (!isApplicationQuitting && this.isInstance) {
            //Iterate through the dictionaries and only check the inputs that have delegates assigned to them.

            Dictionary<string, AxisDelegate>.KeyCollection axisKeys = dictAxisDelegates.Keys;
            if (axisKeys.Count > 0) {
                foreach (string key in axisKeys) {
                    dictAxisDelegates[key](Input.GetAxis(key));
                }
            }

            Dictionary<Axis2DDelegateKey, Axis2DDelegate>.KeyCollection axis2DKeys = dictAxis2DDelegates.Keys;
            if (axis2DKeys.Count > 0) {
                foreach (Axis2DDelegateKey key in axis2DKeys) {
                    dictAxis2DDelegates[key](Input.GetAxis(key.inputHorizontal), Input.GetAxis(key.inputVertical));
                }
            }

            Dictionary<ButtonDelegateKey, ButtonDelegateEntry>.KeyCollection buttonKeys = dictButtonDelegates.Keys;
            if (buttonKeys.Count > 0) {
                foreach (ButtonDelegateKey key in buttonKeys) {
                    ButtonDelegateEntry entry = dictButtonDelegates[key];

                    float value = Input.GetAxis(key.inputName);
                    bool state = false;

                    //If we have a negative threshold for a button, then we want to measure the axis going in the other direction.
                    if (key.axisAsButtonThreshold >= 0) {
                        state = value >= key.axisAsButtonThreshold;
                    } else {
                        state = value <= key.axisAsButtonThreshold;
                    }

                    //Track the Pressed/Released states ourselves since we're detecting axis thresholds.
                    // Not sure if I should be sending Held and NotHeld events at the same time as I send the Pressed and Released
                    // events (respectively), but it's easier for people to use that way.
                    bool pressed = false, held = false, released = false, notHeld = false;
                    if (state && !entry.lastState) {
                        pressed = held = true;
                    } else if (state && entry.lastState) {
                        held = true;
                    } else if (!state && entry.lastState) {
                        released = notHeld = true;
                    } else if (!state && !entry.lastState) {
                        notHeld = true;
                    }

                    entry.buttonDelegate(new ButtonState(pressed, held, released, notHeld));

                    entry.lastState = state;
                }
            }
        }
        // End Update
    }

    //Show all inputs that are registered and their values.
#if UNITY_EDITOR
    public bool showDebugInfo = false;
    private Vector2 scrollPosition;
    void OnGUI() {
        if (showDebugInfo) {
            GUILayout.BeginArea(new Rect(Screen.width - 300, 0, 300, Screen.height - 50));
            GUILayout.BeginVertical("box");
            scrollPosition = GUILayout.BeginScrollView(scrollPosition, false, true, GUILayout.Width(300), GUILayout.Height(Screen.height - 60));
            {
                GUILayout.Label("Input Name (# Delegates): Input Value");

                GUILayout.Label("== Axis Inputs ==========");
                foreach (String key in dictAxisDelegates.Keys) {
                    int invocations = dictAxisDelegates[key].GetInvocationList().Length;
                    GUILayout.Label(key + " (" + invocations + "): " + Input.GetAxis(key).ToString("F3"));
                }

                GUILayout.Label("== Axis2D Inputs ========");
                foreach (Axis2DDelegateKey key in dictAxis2DDelegates.Keys) {
                    int invocations = dictAxis2DDelegates[key].GetInvocationList().Length;
                    GUILayout.Label("(" + key.inputHorizontal + ", " + key.inputVertical + ") (" + invocations + "): ("
                        + Input.GetAxis(key.inputHorizontal).ToString("F3") + ", " + Input.GetAxis(key.inputVertical).ToString("F3") + ")");
                }

                GUILayout.Label("== Button Inputs ========");
                foreach (ButtonDelegateKey key in dictButtonDelegates.Keys) {
                    int invocations = dictButtonDelegates[key].buttonDelegate.GetInvocationList().Length;
                    GUILayout.Label(key.inputName + " (" + invocations + "): " + dictButtonDelegates[key].lastState);
                }
            }
            GUILayout.EndScrollView();
            GUILayout.EndVertical();
            GUILayout.EndArea();
        }
    }
#endif
}
