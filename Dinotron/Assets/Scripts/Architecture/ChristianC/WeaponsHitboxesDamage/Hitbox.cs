using UnityEngine;
using System;
using System.Collections;

//Anything that takes damage from a bullet needs to have a component that is devired from this class on it.
public abstract class Hitbox : MonoBehaviour {

    /// <summary>
    /// This event is called whenever this hitbox takes damage.
    /// </summary>
    public event Action<DamageDealer> DamageTaken;

    /// <summary>
    /// Can this hitbox be hit by this DamageDealer?
    /// </summary>
    /// <returns></returns>
    public abstract bool CanBeHit(DamageDealer damageDealer);
    /// <summary>
    /// Deal damage to this hitbox.
    /// </summary>
    /// <param name="damageDealer">The damageDealer that is dealing damage to the hitbox.</param>
    /// <param name="damage"></param>
    public void TakeDamage(DamageDealer damageDealer) {
        ResolveDamage(damageDealer);
        if (DamageTaken != null) {
            DamageTaken(damageDealer);
        }
    }

    protected abstract void ResolveDamage(DamageDealer damageDealer);
    /// <summary>
    /// What hitboxes should take damage first?
    /// For example: when a bullet hits multiple hitboxes at once, the hitbox with the lowest priority take damage and the rest are uneffected.
    /// </summary>
    public abstract int GetHitPriority();
}
