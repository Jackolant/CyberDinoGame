using UnityEngine;
using System.Collections;

public class WeaponPickupTester : MonoBehaviour {

    public KeyCode testKey;
    public Weapon testWeapon;
	
	// Update is called once per frame
	void Update () {
        if (Input.GetKeyDown(testKey)) {
            foreach (GameCharacter character in FindObjectsOfType<GameCharacter>()) {
                character.AddWeaponAndSetActive(testWeapon);
            }
        }
	}
}
