using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ChangeName : MonoBehaviour {
	public Text dinoName; //creates a text object that allows attaching of a text object to this script
	public GameObject signalSource; 
	private GetDinoInfo delegateSource; //attaches to an instance of the GetDinoInfo script

	void Start () {
		delegateSource = signalSource.GetComponent<GetDinoInfo> (); //sets delegate source to the GetDinoInfo Script of the attached object
		delegateSource.sendName += NameChange; //when the player switches dinosaurs, this delegate subscription recieves the name of the new dionsaur
	}
	public void NameChange(string name) //changes the name of the dinosaur that is being displayed on the screen
	{
		dinoName.text = name; //changes the onscreen text of the dinosaur's name to the one recieved by the delegate call "sendName" from the DinoManager script.

	}
}
