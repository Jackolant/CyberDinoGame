using UnityEngine;
using System.Collections;

public class SoundManager : MonoBehaviour {
	public GameObject healingSound; 
	public GameObject shieldActivateSound; 
	public GameObject shieldDeactivatedSound; 
	public GameObject damageSparkSound; 
	public ManagerHealth playerHealth;  
	public GameObject shootingSound; 

	// Use this for initialization
	void Start () {
		playerHealth = FindObjectOfType<ManagerHealth> ();
		healingSound.SetActive (false); 
		shieldActivateSound.SetActive (false); 
		shieldDeactivatedSound.SetActive (false); 
		damageSparkSound.SetActive (false); 
		shootingSound.SetActive (false); 

	}


	public void playHealingSound() {
		StartCoroutine ("playHealingSoundCo");
	}

	public IEnumerator playHealingSoundCo() {
		healingSound.SetActive (true); 

		yield return new WaitForSeconds (1.3f); 
		healingSound.SetActive (false); 
	}

	public void ShieldSound() {
		StartCoroutine("playShieldSoundCo"); 
	}

	public IEnumerator playShieldSoundCo() {
		shieldActivateSound.SetActive (true); 

		yield return new WaitForSeconds (10f);
		shieldActivateSound.SetActive (false); 
		shieldDeactivatedSound.SetActive (true);

		yield return new WaitForSeconds (1f); 
		shieldDeactivatedSound.SetActive (false); 
	}

	public void playDamageSound() {
		if (playerHealth.currentHealth <= 19f) {
			damageSparkSound.SetActive (true); 
		}
	}
	public void StopDamageSound(){
			damageSparkSound.SetActive (false); 
	}

	public void PlayShootingSound() {
		StartCoroutine ("PlayShootingSoundCo"); 
	}

	public IEnumerator PlayShootingSoundCo () {
		shootingSound.SetActive (true);

		yield return new WaitForSeconds (0.5f);

		shootingSound.SetActive (false); 
	}
}
