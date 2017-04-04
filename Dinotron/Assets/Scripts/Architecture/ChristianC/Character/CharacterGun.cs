using UnityEngine;
using System.Collections;
using System;

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
