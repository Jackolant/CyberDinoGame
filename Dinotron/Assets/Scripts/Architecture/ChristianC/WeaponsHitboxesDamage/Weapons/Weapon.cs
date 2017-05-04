using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Reflection;
using UnityEngine;

//This is an abstract class so that any type of weapon can be devired from it.
//If you need a simple automatic fire weapon, SimpleWeapon is what you're looking for.
public abstract class Weapon : MonoBehaviour {
    public string weaponName;
    public string weaponID;
    public GameCharacter gameCharacter;
    public float damage;
    public bool usesAmmo = false;
    public int maxAmmo = 0;
    public int currentAmmo = 0;
    
    public abstract void UpdateState(bool fireInput, Transform[] projectileSpawnPoints, out float heatChange, out bool weaponFired);

    /// <summary>
    /// This is called when a GameCharacter tries to add/pick up a weapon, but they already have a weapon with the same ID.
    /// By default this restocks the weapon up to it's maxAmmo count.
    /// </summary>
    /// <param name="copy">The weapon that the character tried to pick up.</param>
    public virtual void OnPickupCopy(Weapon copy) {
        if (usesAmmo) {
            currentAmmo = Mathf.Clamp(currentAmmo + copy.currentAmmo, currentAmmo, maxAmmo);
        }
    }
}

