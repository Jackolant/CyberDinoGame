using UnityEngine;
using System.Collections;

public class ManagerHealth : MonoBehaviour {
	// Put this script of the Player/ Enemy 
	public float maxHealth = 20f;
	public float currentHealth = 20f;
	public GameObject healthBar; 
	public VFXManager damageSpark;
	public SoundManager damageSparkSound;
	public HealthDrop health;
	public GameObject enemyOrPlayer;  

	void Start () 
		{	
			currentHealth = maxHealth;
			
		//the InvokeRepeating code is to test when taking damamge over time. 
		//InvokeRepeating("TakingHealth", 1f, 1f); 
		}

	public void TakingHealth (float damage)
			{ //This function will scale the healthbar down when taking damage
			if (currentHealth <= 0) 
			{//If the players/Enemy's health reached 0, then the health bar will not scale down past 0. 
				ZeroHealthbar ();
				damageSpark.StopDamageVFX (); 
				
				enemyOrPlayer.SetActive (false);
				health.DroppingHealth (); 

			}

			else {// current health will go down based on the amount of damage that is being takened. The GainingOrLosingHealth 
			//function only works if the healthbar isn't at 0 or at 100 (*zero health or maxed health*) Once health gets below a certain amount, 
			// the Damage VFX will start 
				currentHealth -= damage;
				float calculatingHealth = currentHealth / maxHealth;
				GainingOrLosingHealth (calculatingHealth); 
				damageSpark.StartDamageVFX();
				damageSparkSound.playDamageSound (); 
				
			Debug.Log ("You have " + currentHealth + "out of " + maxHealth); 

			}
			
		}

	public void ReceivingHealth (float heal)
	{// This Function will scale the healthbar up when picking up a healthpack to receive health
		if (currentHealth >= maxHealth) {
			currentHealth = maxHealth;
			MaxHealthbar ();
		}
		else 
		{//current helath will go up based on the amount of health that it is receiving. The GainingorLosingHealth function 
			//only works if the healthbar isn't at 0 or at 100 (*zero health or maxed health*)
			currentHealth += heal;
			float calculatingHealth = currentHealth / maxHealth;
			GainingOrLosingHealth (calculatingHealth); 
			Debug.Log ("You have " + currentHealth + "out of " + maxHealth);
			if (currentHealth >= maxHealth) {
				currentHealth = maxHealth; 
				MaxHealthbar (); 
				damageSpark.StopDamageVFX ();
				damageSparkSound.StopDamageSound (); 
				Debug.Log ("the VFX has stopped"); 
				Debug.Log ("The sound vfx has stopped");
				Debug.Log ("You are at Max Health");

			}
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