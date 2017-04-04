using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public abstract class Weapon : MonoBehaviour {
    public GameCharacter gameCharacter;
    public GameObject projectilePrefab;
    public float damage;

    public abstract void UpdateState(bool fireInput, Transform[] projectileSpawnPoints, out float heatChange, out bool weaponFired);
}

