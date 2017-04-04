using UnityEngine;
using System.Collections;
using UnityEngine.UI;
//this script contains a all in one stat slider manipulator code that allows each slider the ability to listen for a certain stat event call from the 
//DinoManager Script.
public class SliderManager : MonoBehaviour {
	public Slider mySlider; //allows a slider to be affected by this script
	private enum statCode{Health,Heat,Speed,Damage,ROF}; //creates an enum type that holds the different stats that can be listened for.
	[SerializeField]
	private statCode stat; //the stat that this script is listening for

	public GameObject signalSource;
	private GetDinoInfo delegateSource;
	//subscribes to a certain event from the DinoClass based on what stat the slider is listening for.
	void Start(){
		delegateSource = signalSource.GetComponent<GetDinoInfo> ();
		if (stat == statCode.Health) {
			delegateSource.sendHealth += ChangeStat;
			mySlider.value = delegateSource.dinoStatistics [0].MaxHealth;
		}
		if (stat == statCode.Heat) {
			delegateSource.sendHeat += ChangeStat;
			mySlider.value = delegateSource.dinoStatistics [0].MaxHeat;
		}
		if (stat == statCode.Speed) {
			delegateSource.sendSpeed += ChangeStat;
			mySlider.value = delegateSource.dinoStatistics [0].speed;
		}
		if (stat == statCode.Damage) {
			delegateSource.sendDamage += ChangeStat;
			mySlider.value = delegateSource.dinoWeapons [0].damage;
		}
		if (stat == statCode.ROF) {
			delegateSource.sendROF += ChangeStat;
			mySlider.value = delegateSource.dinoWeapons [0].fireDelay;
		}

	}
	public void ChangeStat(float value) //overloaded method that changes the stat for the slider if the stat it's listening for is an int
	{																  //PlayerNumber is a enum type from DinoManager
			mySlider.value = value;
	}
}
