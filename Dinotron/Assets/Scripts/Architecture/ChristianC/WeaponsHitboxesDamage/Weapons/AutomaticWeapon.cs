using System;
using System.Collections.Generic;
using UnityEngine;

//A simple automatic fire weapon. Should cover a lot of use cases of what's needed for things, but I'm leaving other kinds of weapons to be implemented by the Weapons team itself.
public class AutomaticWeapon : Weapon {
    // What is this weapon firing?
    public GameObject projectilePrefab;
    // How many seconds to wait before firing the next bullet. For 10 bullets a second, set this to 0.1.
    public float fireDelay;
    // What is the heat cost of firing a single bullet?
    public float heatCostPerFiring;

    // Keeps track of the spawn point we last fired from so that they can be properly cycled through.
    private int spawnIndex;
    // At what time did we fire our last shot?
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

            if (usesAmmo) {
                currentAmmo = Mathf.Max(currentAmmo - 1, 0);

                if (currentAmmo == 0) {
                    gameCharacter.RemoveWeapon(this);
                }
            }

            //Set return variables
            weaponFired = true;
            heatChange = heatCostPerFiring;
        }
    }
}
