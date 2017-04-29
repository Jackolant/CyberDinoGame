using UnityEngine;
using System.Collections;

public class VFXManager : MonoBehaviour {
	// Create an Empty Game Object and name if VFX Manager. Then attach This Script to the VFX Manager. This script will handles all VFX (*Hopefulle*)
	// but as of right now, the VFX manager script handles the Damage VFX.
	// As for the game object shield damagesparks, heal vfx,  those particle prefabs should be parented underneath the player. and then drag those
	//componenets to the field in the VFX manager game object. 

	public ManagerHealth playerHealth; 
	public SoundManager shieldSound; 
	public GameObject damageSparks; 
	public GameObject shield;
	public GameObject healVFX;
	public Collider playerOrEnemy; 
	//private ParticleSystem shieldVFX;  
	public bool shieldIsUp;


	// Use this for initialization
	void Start () {
		playerHealth = FindObjectOfType<ManagerHealth> ();
		shieldSound = FindObjectOfType <SoundManager> (); 
		//damage = GetComponent<ParticleSystem> ();
		shieldIsUp = false; 
		damageSparks.SetActive (false);
		shield.SetActive (false);
		healVFX.SetActive (false);
		//shieldVFX = GetComponent<ParticleSystem> (); 
	}
	// ShieldsIp() only runs on update. 
	void Update(){

		ShieldsUp ();
	}
	// Starts the damageSparks vfx once player starts taking physical damage
	public void StartDamageVFX () {
			damageSparks.SetActive (true);
	}
	// Stops once the player 
	public void StopDamageVFX() {
			damageSparks.SetActive(false);
	}
	// Does the co-routine of ShieldsUpCo so once the sheild is activated, you have to wait 11 seconds until you are able to use it again. 
	public void ShieldsUp(){
		if (Input.GetKeyDown (KeyCode.S) && shieldIsUp == false) {
			StartCoroutine("ShieldsUpCo");
			shieldSound.ShieldSound (); 
		}
	}
	// Shield becomes active, player's collider will be turned off. After 11 seconds, the shield will be off, and players collider will be turned on. 
	public IEnumerator ShieldsUpCo() {
		shield.SetActive (true);
		shieldIsUp = true;
		playerOrEnemy.enabled = false;
		//shooting.enabled = false;  < --- whatever variable we are using for shooting in the other script is basically what we are putting here to turn off shooting when shield is up. 

		yield  return new WaitForSeconds (11);
			shield.SetActive(false); 
			shieldIsUp = false; 
			playerOrEnemy.enabled = true; 
	}

	public void HealthVFX() {
		StartCoroutine ("HealthVFXCo"); 
	}

	public IEnumerator HealthVFXCo() {
		healVFX.SetActive (true); 

		yield return new WaitForSeconds(6);
			healVFX.SetActive (false); 

	}
		
}	