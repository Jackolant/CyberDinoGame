using UnityEngine;
using System.Collections;

//Script that lisens for a gameCharacter's death.
//Mean to be attached to the object with the Game Character on it.
//Right now it just makes an explosion prefab and disables it's game object.
[RequireComponent(typeof(GameCharacter))]
public class CharacterDeath : MonoBehaviour {

    private GameCharacter gameCharacter;
    public GameObject explosionPrefab;

	// Use this for initialization
	void OnEnable () {
        gameCharacter = GetComponent<GameCharacter>();
        gameCharacter.Death += IDied;
    }
	
	void OnDisable() {
        gameCharacter.Death -= IDied;
    }

    void IDied() {
        //Spawn Health Pack here!
        Instantiate(explosionPrefab, GetComponent<Collider>().bounds.center, Quaternion.identity);

        gameObject.SetActive(false);
    }
}
