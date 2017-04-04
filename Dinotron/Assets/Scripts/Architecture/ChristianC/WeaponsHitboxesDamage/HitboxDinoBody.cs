using UnityEngine;
using System.Collections;
using System;

public class HitboxDinoBody : MonoBehaviour, IHitbox {

    public GameCharacter dino;
    public bool weakPoint;

    public event Action<float> DamageTaken;

    public bool CanBeHit(DamageDealer damageDealer) {
        return true;
    }

    public int GetHitPriority() {
        return (weakPoint) ? 1 : 2;
    }

    public void TakeDamage(float damage) {
        float d = (weakPoint) ? damage * 2 : damage;
        dino.CurrentHealth -= d;
        if (DamageTaken != null) {
            DamageTaken(d);
        }
    }
}
