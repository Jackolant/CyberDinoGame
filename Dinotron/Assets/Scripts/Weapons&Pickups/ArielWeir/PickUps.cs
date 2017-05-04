using UnityEngine;
using System.Collections;

public class PickUps : MonoBehaviour {
	// Put this Script of the Health Pick Up Item 
	public float hP = 0.25f;
	//put the player in this field
	public ManagerHealth playerHealth;
	// Put the healthpack in this field
	public Collider healthPickup; 

	void Start () {
		playerHealth = FindObjectOfType<ManagerHealth> ();
	}

	void OnTriggerEnter (Collider other) {
		//Make sure that the tag of the player is set to "Player". This could also apply to Enemies or other players. 
		if (other.gameObject.tag == "Player" )
		{// If the players current health is equal to their max health,it will turn off the box collider
			//and the player will not be able to pick up the health pack
			if (playerHealth.currentHealth >= playerHealth.maxHealth) 
			{
				healthPickup.enabled = false; 
			}
			else 
			{// If the players health is less than max health, then the box collider will be turned on
				//and the player will be able to pick up the health pack. 
				healthPickup.enabled = true; 
				playerHealth.ReceivingHealth(hP * 100); 
				Debug.Log ("You are gaining health!");
				Destroy(gameObject);

			}
		}
	}
}