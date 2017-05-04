using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Use this component for anything in the game that deals damage.
/// Does not delete itself upon dealing damage.
/// </summary>
public class DamageDealer : MonoBehaviour {

    /// <summary>
    /// For bullets, set this to the player who fired the bullet.
    /// </summary>
    public GameObject damageSource;
    public List<Transform> excludedTransforms = new List<Transform>();
    public float damage;
    public bool isProjectile = true;
    /// <summary>
    /// If two hitboxes are more than this far apart, than the closer one will be hit no matter the priority of the other one.
    /// The idea is that armor hitboxes will be very close to the hitbox of the pieces they are protecting.
    /// </summary>
    protected const float distanceTolerance = 0.1f;
    public Action<float> DamageDealt;

    protected Transform tr;
    protected Vector3 prevPosition;
    protected Collider coll;

    protected void Start() {
        tr = transform;
        prevPosition = tr.position;
        coll = GetComponent<Collider>();
    }


    protected class HitboxEntry {
        public readonly Hitbox hitbox;
        public readonly Vector3 collisionPoint;
        public readonly float distance;

        public HitboxEntry(Hitbox hitbox, Vector3 collisionPoint, float distance) {
            this.hitbox = hitbox;
            this.collisionPoint = collisionPoint;
            this.distance = distance;
        }
    }

    /// <summary>
    /// A list of everything this script hit during the last fixed update.
    /// </summary>
    protected List<HitboxEntry> hitboxes = new List<HitboxEntry>(10);
    protected Coroutine coroutineResolveDamage;

    public bool IsTransformExcluded(Transform transform) {
        return excludedTransforms.Exists(excludedTr => transform.IsChildOf(excludedTr));
    }

    protected void FixedUpdate() {
        hitboxes.Clear();
        prevPosition = tr.position;
    }

    // Pass all trigger and collision events to the OnCollide code, fetching the collision point if we can get it.
    protected void OnTriggerEnter(Collider collider) {
        OnCollide(collider);
    }

    protected void OnTriggerStay(Collider collider) {
        OnCollide(collider);
    }

    protected void OnCollisionEnter(Collision collision) {
        OnCollide(collision.collider, collision.contacts[0].point, true);
    }

    protected void OnCollisionStay(Collision collision) {
        OnCollide(collision.collider, collision.contacts[0].point, true);
    }

    protected void OnCollide(Collider collider) {
        OnCollide(collider, Vector3.zero);
    }

    protected void OnCollide(Collider collider, Vector3 collisionPoint, bool hasPoint = false) {
        Hitbox hitbox = collider.GetComponent<Hitbox>();
        if (hitbox != null && !hitboxes.Exists(entry => entry.hitbox == hitbox) && hitbox.CanBeHit(this) && !IsTransformExcluded(collider.transform)) {
            Vector3 direction = tr.position - prevPosition;

            // If direction isn't equal to zero, then we haven't been moving! So fall back to treating this like a non-projectilve damage dealer.
            // Also if this raycast fails, then use the fallback as well.
            Ray ray = new Ray(prevPosition, direction);
            RaycastHit hit;
            if (isProjectile && direction != Vector3.zero && collider.Raycast(ray, out hit, (tr.position - prevPosition).magnitude * 2.1f)) {
                    hitboxes.Add(new HitboxEntry(hitbox, hit.point, hit.distance));
            } else {
                //Use the backup point if we've got it. Score it's distance based on our previous position.
                if (hasPoint) {
                    hitboxes.Add(new HitboxEntry(hitbox, collisionPoint, (collisionPoint - prevPosition).magnitude));
                } else {
                    //If we don't have a backup point, then do a raycast towords the collider's center that will almost certainly get us a point.
                    // Raycast from our current position to the center of the collider bounds.
                    Vector3 boundsVector = collider.bounds.center - tr.position;
                    ray = new Ray(tr.position, boundsVector);
                    if (collider.Raycast(ray, out hit, boundsVector.magnitude + 0.05f)) {
                        hitboxes.Add(new HitboxEntry(hitbox, hit.point, (hit.point - prevPosition).magnitude));
                    } else {
                        // If that failed, then either there's some wonky concave stuff going on or we're inside of the other collider!
                        // So let's just assume that we're inside the other collider because the other possible edge cases are so obscure that I'm not going to waste extra raycasts/math on them.
                        hitboxes.Add(new HitboxEntry(hitbox, tr.position, (tr.position - prevPosition).magnitude));
                    }
                }
            }

            // Make sure we start the post fixed update coroutine if it's not already running.
            if (coroutineResolveDamage == null) {
                coroutineResolveDamage = StartCoroutine(ResolveDamage());
            }
        }
    }

    protected IEnumerator ResolveDamage() {
        yield return new WaitForFixedUpdate();

        HitboxEntry bestEntry = null;
        
        //Find the closet hitbox
        foreach(HitboxEntry entry in hitboxes) {
            if (bestEntry == null) {
                bestEntry = entry;
            } else {
                if (entry.distance < bestEntry.distance) {
                    bestEntry = entry;
                }
            }
        }

        // Iterate again to see if there's any hitboxes within the distance tolerance range that have a lower priority.
        foreach(HitboxEntry entry in hitboxes) {
            if (entry == bestEntry) {
                continue;
            } else if (entry.hitbox.GetHitPriority() < bestEntry.hitbox.GetHitPriority()) {
                float distance = (bestEntry.collisionPoint - entry.collisionPoint).sqrMagnitude;
                if (distance <= distanceTolerance * distanceTolerance) {
                    bestEntry = entry;
                }
            }
        }

        //Have the hitbox take damage from us.
        if (bestEntry != null) {
            bestEntry.hitbox.TakeDamage(this);
        }

        //Clear out the coroutine tracking variable.
        coroutineResolveDamage = null;
    }
}
