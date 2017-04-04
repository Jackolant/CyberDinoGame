using UnityEngine;
using System;
using System.Collections;

public interface IHitbox {

    /// <summary>
    /// This event is called whenever this hitbox takes damage.
    /// </summary>
    event Action<float> DamageTaken;

    /// <summary>
    /// Can this hitbox be hit by this DamageDealer?
    /// </summary>
    /// <returns></returns>
    bool CanBeHit(DamageDealer damageDealer);
    /// <summary>
    /// Deal damage to this hitbox.
    /// </summary>
    /// <param name="damage"></param>
    void TakeDamage(float damage);
    /// <summary>
    /// What hitboxes should take damage first?
    /// For example: when a bullet hits multiple hitboxes at once, the hitbox with the lowest priority take damage and the rest are uneffected.
    /// </summary>
    int GetHitPriority();
}
