using UnityEngine;
using System.Collections;


public class PickUps : MonoBehaviour {
	// Put this Script of the Health Pick Up Item 
	//put the player in this field
	public ManagerHealth playerHealth;
	// Put the healthpack in this field
	public Collider healthPickup; 
	public GameObject health; 
	public VFXManager healthFX; 
	public SoundManager healthSound; 

	void Start () {
		playerHealth = FindObjectOfType<ManagerHealth> ();
		healthFX = FindObjectOfType<VFXManager> (); 
		healthSound = FindObjectOfType<SoundManager> (); 
	}

	void OnTriggerEnter (Collider other) {
		//Make sure that the tag of the player is set to "Player". This could also apply to Enemies or other players. 
		if (other.gameObject.tag == "Player" )
		{// If the players current health is equal to their max health,it will turn off the box collider
			//and the player will not be able to pick up the health pack
			if (playerHealth.currentHealth >= playerHealth.maxHealth) 
			{StartCoroutine ("HealthPickUpCo");
			}
			else 
			{// If the players health is less than max health, then the box collider will be turned on
				//and the player will be able to pick up the health pack. 
				healthPickup.enabled = true; 
				Debug.Log ("You're making a sound!");  
				playerHealth.ReceivingHealth(playerHealth.maxHealth/4); 
				if (playerHealth.currentHealth >= playerHealth.maxHealth) {
					playerHealth.currentHealth = playerHealth.maxHealth;
					playerHealth.MaxHealthbar (); 
				}
				Debug.Log ("You are gaining health!");
				healthFX.HealthVFX ();
				healthSound.playHealingSound (); 
				health.SetActive (false);


			}
		}
	}

	public IEnumerator HealthPickUpCo() {
		healthPickup.enabled = false; 
		yield return new WaitForSeconds (5); 

		healthPickup.enabled = true; 
	}
}