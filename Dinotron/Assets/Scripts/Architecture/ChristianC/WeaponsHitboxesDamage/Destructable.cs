using UnityEngine;
using System.Collections;
using System;

//This script is simply a test to see if my hitbox code was working.
public class Destructable : Hitbox {

    public int hitPriority = -10;
    public float health = 1000;

    public override bool CanBeHit(DamageDealer damageDealer) {
        return true;
    }

    public override int GetHitPriority() {
        return hitPriority;
    }

    protected override void ResolveDamage(DamageDealer damageDealer) {
        health -= damageDealer.damage;

        if (health <= 0) {
            gameObject.SetActive(false);
        }

        MeshRenderer renderer = GetComponent<MeshRenderer>();
        if (renderer) {
            Material material = renderer.material;
            material.color = Color.Lerp(material.color, Color.black, 0.25f);
            renderer.material = material;
        }
    }
}
