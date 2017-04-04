using UnityEngine;
using System.Collections;

//this script holds all the information for each dinosaur in separate DinoClass objects.
//this script also houses and controls the delegates that change the stat sliders in the scene.
//this script also controls which dinosaur box is highlighted when in the "pulled out" TAB view.
public class DinoManager : MonoBehaviour {
	//the number of rows and colomns that the "pulled out" TAB view houses
	private int rows = 2;
	private int colomns = 2;
	//these variables control the current localPosition in the list of dinosaurs
	private int rowPos = 0;
	private int colPos = 0;
	public enum playerNumber {one,two,three,four}; //denotes which player is sending out the event call
	[SerializeField]
	private playerNumber player; //denotes which player is sending out the event call
	//these KeyCodes allow the screen to be set up to handle multiple players. They can be set for each screen in the inspector view.
	[SerializeField] //SerializeField is a temporary way the so private variables in the inspector view without breaking programming convention.
					 //they will be removed when all the keyCodes are permanently set and the final game is published.
	private KeyCode upKey = KeyCode.W;
	[SerializeField]
	private KeyCode downKey = KeyCode.S;
	[SerializeField]
	private KeyCode leftKey = KeyCode.A;
	[SerializeField]
	private KeyCode rightKey = KeyCode.D;

    public GameObject highlighter;
	private RectTransform highlighterRectTr; //this object houses the yellow highlight ring that is visible in the "pulled out" TAB view.
	private Vector3 localPositioner = new Vector3(0,0,0); //this vector3 is used to move the highlighter object when one of the KeyCodes above is pressed.
	DinoClass[,] dinoList = new DinoClass[2,2]; //this 2D array houses all the information (stats) for the dinosaurs currently in the game.

	//These delegates are used to change the slider bars on the interface to match the corisponding dinosaur's stats.
	public delegate void broadcastIntStat (int value, playerNumber playerNum); //This is a delegate that sends out the integer value stats of the currently selected dinosaur(health,Heat,Damage)
	public delegate void broadcastFloatStat (float value, playerNumber playerNum); //This is a delegate that sends out the float value stats of the currently selected dino (Speed,Rate of fire)
	public delegate void broadcastName (string name, playerNumber playerNum); //This sends out the name of the currently selected dinosuar. This is used by the "DinosaurName" UI text element.

	//these are the different events that are called when the user changes dinosaurs using the KeyCodes above.
	public static event broadcastIntStat sendHealth;
	public static event broadcastIntStat sendHeat;
	public static event broadcastFloatStat sendSpeed;
	public static event broadcastIntStat sendDamage;
	public static event broadcastFloatStat sendROF;
	public static event broadcastName sendName;

	void Start () {
		//Sets the stats of each dinosaur in the list, and also gives them a localPosition that corisponds with the interface
		dinoList [0,0] = new DinoClass (150,25,20,5,2,"Stegosaurus");
		dinoList [1,0] = new DinoClass (200, 20, 30, 20, 0.5f, "Spinosaraus");
		dinoList [0,1] = new DinoClass (250, 10, 10, 10, 1, "T-Rex");
		dinoList [1,1] = new DinoClass (100, 50, 30, 1, 5, "Raptor");
        highlighterRectTr = highlighter.GetComponent<RectTransform>();
		localPositioner = highlighterRectTr.localPosition; //sets the highlight box to the first dino in the "pulled out" TAB list.
		Debug.Log ("starting Program" + rowPos + colPos);
	}
	void Update(){
		//these if statements test to see if a specific KeyCode is pressed, and then increment the localPosition in the 2d array dinoList. After incrementing
		//delegates are activated to change the stats on the slider bars.
		if (Input.GetKeyDown (upKey) == true && colPos != 0) {
			colPos--; //decrement the localPosition of the colomns in the 2D array
			delegateStats (); //calls the delegates that send out the stats for the chosen dinosaur
			localPositioner.Set (highlighterRectTr.localPosition.x, highlighterRectTr.localPosition.y + 200, highlighterRectTr.localPosition.z); //changes the posistion of the box highlihgter
																																		 //to match which dino is currently selected.
			highlighterRectTr.transform.localPosition = localPositioner; //sets the localPosition of the highlighter box = to the vector3 "localPositioner".
		}
		else if (Input.GetKeyDown (downKey) == true && colPos < colomns - 1) {
			colPos++;
			delegateStats ();
			Debug.Log (rowPos + colPos);
			localPositioner.Set (highlighterRectTr.localPosition.x, highlighterRectTr.localPosition.y - 200, highlighterRectTr.localPosition.z);
			highlighterRectTr.localPosition = localPositioner;
		}
		else if (Input.GetKeyDown (leftKey) == true && rowPos != 0) {
			rowPos--;
			delegateStats ();
			Debug.Log (rowPos + colPos);
			localPositioner.Set (highlighterRectTr.localPosition.x - 225.5f, highlighterRectTr.localPosition.y, highlighterRectTr.localPosition.z);
			highlighterRectTr.localPosition = localPositioner;
		}
		else if (Input.GetKeyDown (rightKey) == true && rowPos < rows - 1) {
			rowPos++;
			delegateStats ();
			Debug.Log (rowPos + colPos);
			localPositioner.Set (highlighterRectTr.localPosition.x + 225.5f, highlighterRectTr.localPosition.y, highlighterRectTr.localPosition.z);
			highlighterRectTr.localPosition = localPositioner;
		}
	}
	//these event calls send out the stats of the dinosuar to all of their subscribers. Most subscribers are currently slider bars.
	public void delegateStats()
	{
		if (sendHealth != null) {
			sendHealth (dinoList [rowPos,colPos].getHealth(),player);
		}
		if (sendHeat != null) {
			sendHeat (dinoList [rowPos,colPos].getHeat(),player);
		}
		if (sendSpeed != null) {
			sendSpeed (dinoList [rowPos,colPos].getSpeed(),player);
		}
		if (sendDamage != null) {
			sendDamage (dinoList [rowPos,colPos].getDamage(),player);
		}
		if (sendROF != null) {
			sendROF (dinoList [rowPos,colPos].getROF(),player);
		}
		if (sendName != null) {
			sendName (dinoList [rowPos, colPos].getName (),player);
		}

	}
}
