using UnityEngine;
using System.Collections;
using System;

//This component exists to point the character's (dino's) guns in the right direction and to keep track of where we can fire bullets from!
//It does no actual firing of weapons on it's own. 
public class CharacterGun : MonoBehaviour
{
    public GameCharacter gameCharacter;
    public Transform[] barrels;
    public Transform[] bulletSpawnPoints;
    private Transform tr;

    void Start() 
	{
        tr = transform;
    }

    void Update() {
        // Aim at the aim point!
        tr.rotation = Quaternion.LookRotation(gameCharacter.aimPoint - tr.position, tr.parent.up);

        foreach (Transform trBarrel in barrels) {
            Quaternion barrelTarget = Quaternion.LookRotation(gameCharacter.aimPoint - trBarrel.position, tr.up);
            trBarrel.rotation = Quaternion.RotateTowards(trBarrel.rotation, barrelTarget, 180f * Time.deltaTime);
        }
    }
}
