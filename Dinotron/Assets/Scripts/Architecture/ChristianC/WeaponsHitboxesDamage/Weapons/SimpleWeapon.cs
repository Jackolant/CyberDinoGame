using System;
using System.Collections.Generic;
using UnityEngine;

public class SimpleWeapon : Weapon {
    public float fireDelay;
    public float heatCostPerFiring;

    private int spawnIndex;
    private float lastFiredTime;

    public override void UpdateState(bool fireInput, Transform[] projectileSpawnPoints, out float heatChange, out bool weaponFired) {
        weaponFired = false;
        heatChange = 0f;

        if (fireInput && lastFiredTime + fireDelay <= Time.time) {
            //Cycle throught the projectile spawn points.
            spawnIndex = (spawnIndex + 1) % projectileSpawnPoints.Length;

            //Create projectilePrefab
            // TODO: Get projectiles from a object pool intead of creating them!!
            DamageDealer damager = (Instantiate(projectilePrefab, projectileSpawnPoints[spawnIndex].position, projectileSpawnPoints[spawnIndex].rotation) as GameObject).GetComponent<DamageDealer>();

            //...configure it
            damager.damageSource = gameCharacter.gameObject;
            damager.damage = damage;
            damager.excludedTransforms.Add(gameCharacter.transform);
            lastFiredTime = Time.time;

            //And finally enable it to send it on it's way!
            damager.gameObject.SetActive(true);

            //Keep track of when we last fired.
            lastFiredTime = Time.time;

            //Set return variables
            weaponFired = true;
            heatChange = heatCostPerFiring;
        }
    }
}
