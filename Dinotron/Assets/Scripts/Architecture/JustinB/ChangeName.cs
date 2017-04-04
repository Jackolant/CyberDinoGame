using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ChangeName : MonoBehaviour {

	public Text dinoName; //creates a text object that allows attacking of a text object in the scene
	[SerializeField]
	private DinoManager.playerNumber playerCode; //listens for a certain players event call.
	void Start () {
		dinoName.text = "Stegosaurus"; //sets the name to the first dinosaur in the list
		DinoManager.sendName += nameChange; //when the player switches dinosaurs, this delegate subscription recieves the name of the new dionsaur
	}
	public void nameChange(string name,DinoManager.playerNumber player) //changes the name of the dinosaur that is being displayed on the screen
	{
		if (player == playerCode)
		{
		dinoName.text = name; //changes the onscreen text of the dinosaur's name to the one recieved by the delegate call "sendName" from the DinoManager script.
		}
		}
}
