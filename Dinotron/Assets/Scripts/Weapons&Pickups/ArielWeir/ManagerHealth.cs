using UnityEngine;
using System.Collections;

public class ManagerHealth : MonoBehaviour {
	// Put this script of the Player/ Enemy 
	public float maxHealth = 100f;
	public float currentHealth = 100f;
	public GameObject healthBar; 

	void Start () 
		{	
			currentHealth = maxHealth;

		}

	public void TakingHealth (float damage)
			{ //This function will scale the healthbar down when taking damage
			if (currentHealth <= 0) 
			{//If the players/Enemy's health reached 0, then the health bar will not scale down past 0. 
				ZeroHealthbar (); 
			} 
			else 
			{// current health will go down based on the amount of damage that is being takened. The GainingOrLosingHealth 
			//function only works if the healthbar isn't at 0 or at 100 (*zero health or maxed health*)
				currentHealth -= damage;
				float calculatingHealth = currentHealth / maxHealth;
				GainingOrLosingHealth (calculatingHealth); 
			}
		}

	public void ReceivingHealth (float heal)
	{// This Function will scale the healthbar up when picking up a healthpack to receive health

		if (currentHealth >= maxHealth) {
			currentHealth = maxHealth;
			MaxHealthbar ();//If the currenthealth is equal to max heal (*100*), then the healthbar will not scale up past 1
		} 
		else 
		{//current helath will go up based on the amount of health that it is receiving. The GainingorLosingHealth function 
			//only works if the healthbar isn't at 0 or at 100 (*zero health or maxed health*)
			currentHealth += heal;
			float calculatingHealth = currentHealth / maxHealth;
			GainingOrLosingHealth (calculatingHealth); 
		}
		
	}

	public void GainingOrLosingHealth (float myCurrentHealth) 
		{// This function only works if current health isn't 0 or 100.
			healthBar.transform.localScale = new Vector3 (myCurrentHealth, 1f, 1f); 
		}

	public void MaxHealthbar () 
	{//This function only works if current health is 100 and the localscale of the healthbar won't past 1
			healthBar.transform.localScale = new Vector3 (1f, 1f, 1f);
		}
	
	public void ZeroHealthbar () 
		{// This function only works if current health is 0 and the localscale of the healthbar won't past 0. 
		healthBar.transform.localScale = new Vector3 (0f, 1f, 1f); 
		}
}