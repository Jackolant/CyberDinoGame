using UnityEngine;
using System.Collections;

//Short, simple, and lazy script that exits the application when the ESC/"Cancel" input is pressed.
public class CancelToQuit : MonoBehaviour {

	// Update is called once per frame
	void Update () {
	    if (Input.GetButtonDown("Cancel")) {
            Application.Quit();
        }
	}
}
