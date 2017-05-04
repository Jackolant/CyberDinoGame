using UnityEngine;
using System.Collections;
using System;

//This hitbox type simply passes on any damage to a GameCharater component.
public class HitboxDinoBody : Hitbox {

    public GameCharacter dino;
    public bool weakPoint;

    public override bool CanBeHit(DamageDealer damageDealer) {
        return true;
    }

    public override int GetHitPriority() {
        return (weakPoint) ? 1 : 2;
    }

    protected override void ResolveDamage(DamageDealer damageDealer) {
        float d = (weakPoint) ? damageDealer.damage * 2 : damageDealer.damage;
        dino.CurrentHealth -= d;
    }
}
