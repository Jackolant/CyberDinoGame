using UnityEngine;
using System.Collections;
using UnityEngine.UI;
//this script contains a all in one stat slider manipulator code that allows each slider the ability to listen for a certain stat event call from the 
//DinoManager Script.
public class SliderManager : MonoBehaviour {
	public Slider mySlider; //allows a slider to be affected by this script
	private enum statCode{Health,Heat,Speed,Damage,ROF}; //creates an enum type that holds the different stats that can be listened for.
	[SerializeField]
	private DinoManager.playerNumber playerCode; //Dictates which player this slider is listening for.
	[SerializeField]
	private statCode stat; //the stat that this script is listening for

	//subscribes to a certain event from the DinoClass based on what stat the slider is listening for.
	void Start(){
		if (stat == statCode.Health) {
			DinoManager.sendHealth += changeStat;
		}
		if (stat == statCode.Heat) {
			DinoManager.sendHeat += changeStat;
		}
		if (stat == statCode.Speed) {
			DinoManager.sendSpeed += changeStat;
		}
		if (stat == statCode.Damage) {
			DinoManager.sendDamage += changeStat;
		}
		if (stat == statCode.ROF) {
			DinoManager.sendROF += changeStat;
		}
	}
	public void changeStat(int value,DinoManager.playerNumber player) //overloaded method that changes the stat for the slider if the stat it's listening for is an int
	{																  //PlayerNumber is a enum type from DinoManager
		if (player == playerCode) { //if the player that sent the code matches the one this slider is listening for, change the value of the slider.
			mySlider.value = value;
		}
	}
	public void changeStat(float value,DinoManager.playerNumber player) //overloaded method that changes the stat for the slider if the stat it's listening for is an int
	{																	
		if (player == playerCode) {
			mySlider.value = value;
		}
	}
}
