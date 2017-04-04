using UnityEngine;
using System.Collections;
//this script contains a delegate that toggles whether or not the "pulled out" TAB view is active.
public class TabToggleDel : MonoBehaviour {
	public delegate void RTrigger(KeyCode keyPressed);
	public static event RTrigger OnPress;

	[SerializeField] //this is temporary and allows for the openTablet keycode to show up in the inspector view while also keeping to coding conventions
	private KeyCode openTablet = KeyCode.Tab; //the key that the script is looking for to open up the "pulled out" TAB menu

	void OnTriggerPress()
	{
		if (Input.GetKeyDown (openTablet) == true) { //when the specified key is pressed, it sends out the event call
			if (OnPress != null) {
				OnPress (openTablet);
			}
			Debug.Log ("Event Siganal Sent");
		}
	}
	void Update()
	{
		OnTriggerPress ();
	}
}

