using UnityEngine;
using System.Collections;

public class HealthDrop : MonoBehaviour {
	//public ManagerHealth playerHealth; 
	public GameObject healthDrop; 
	public Rigidbody healthDropRB; 



	// Use this for initialization
	void Start () {
		//playerHealth = FindObjectOfType<ManagerHealth> ();
		//healthDropRB = healthDrop.GetComponent<Rigidbody> (); 
		healthDrop.SetActive (false);
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}


	public void DroppingHealth() {
			healthDrop.SetActive(true);
			healthDropRB.AddForce (Vector3.up * 125);
			healthDropRB.AddForce (Vector3.forward * 125);
		}
	}
