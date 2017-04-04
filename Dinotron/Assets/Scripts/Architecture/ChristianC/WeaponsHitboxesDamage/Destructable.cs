using UnityEngine;
using System.Collections;
using System;

public class Destructable : MonoBehaviour, IHitbox {

    public int hitPriority = -10;
    public float health = 1000;

    public event Action<float> DamageTaken;

    public bool CanBeHit(DamageDealer damageDealer) {
        return true;
    }

    public int GetHitPriority() {
        return hitPriority;
    }

    public void TakeDamage(float damage) {
        health -= damage;

        if (DamageTaken != null) {
            DamageTaken(damage);
        }

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
