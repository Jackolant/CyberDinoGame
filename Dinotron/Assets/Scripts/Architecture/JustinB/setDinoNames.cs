using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class setDinoNames : MonoBehaviour {

	public Text dinoName; //creates a text object that allows attacking of a text object in the scene
	public GameObject signalSource;
	private GetDinoInfo delegateSource;

	public int dinosaurPosition;

	// Use this for initialization
	void Start () {
		delegateSource = signalSource.GetComponent<GetDinoInfo> ();
		if (dinosaurPosition < delegateSource.numberOfDinosaurs.Count) {
			dinoName.text = delegateSource.numberOfDinosaurs [dinosaurPosition].name;
		} else {
			dinoName.text = delegateSource.numberOfDinosaurs [delegateSource.numberOfDinosaurs.Count - 1].name;
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
