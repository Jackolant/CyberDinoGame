	using UnityEngine;
using System.Collections;
//this script opens and closes (disable/enable) the "pulled out" TAB view that contains the dinosaur panels.
//this script is subscribed to events from the TabToggleDel script.

public class OpenCloseTab : MonoBehaviour {
	[SerializeField]	//this is temporary and allows the private variable to be changed in the inspector view without breaking coding convention
						//it will be removed in the final build once each script is set correctly.
	private PlayerInputConfig inputConfig;
	[SerializeField]
	private bool startingActive = false;

	void OnDestroy() {
		InputManager.RemoveButtonDelegate (inputConfig.fireInput, ToggleTab);
	}

	void Start () {
		InputManager.AddButtonDelegate (inputConfig.fireInput, ToggleTab);
		gameObject.SetActive (startingActive); //sets whether or not the object this script is attached to will start out disabled or enabled.
	}

	void ToggleTab(ButtonState button) //toggles disable and enable when recieving a event call from "TabToggleDel's" "OnPress" event.
	{
		if (button.Pressed) { //if the key that was pressed matches the KeyCode symbol then toggle the "pulled out" TAB view.
			gameObject.SetActive (!gameObject.activeSelf);
		}	
	}
}
