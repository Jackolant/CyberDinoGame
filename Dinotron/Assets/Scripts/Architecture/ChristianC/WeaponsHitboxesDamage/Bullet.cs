using UnityEngine;
using System.Collections;

// All this script does is kill the bullet if it flies for too long and kill the bullet when it hits something.
[RequireComponent(typeof(Rigidbody))]
[RequireComponent(typeof(DamageDealer))]
public class Bullet : MonoBehaviour {

    private DamageDealer damageDealer;
    public float speed = 100f;

    private Transform tr;
    private Vector3 startPosition;
    public float maxDistance = 400f;

	// Use this for initialization
	void Awake () {
        damageDealer = GetComponent<DamageDealer>();
	}

    void Start() {
        tr = transform;
        GetComponent<Rigidbody>().AddForce(tr.forward * speed, ForceMode.VelocityChange);
        startPosition = tr.position;
    }

    void FixedUpdate() {
        if ((tr.position - startPosition).sqrMagnitude >= maxDistance * maxDistance) {
            RemoveBullet();
        }
    }

    void OnTriggerEnter(Collider collider) {
        OnCollision(collider);
    }

    void OnCollisionEnter(Collision collision) {
        OnCollision(collision.collider);
    }

    void OnCollision(Collider collider) {
        if (!damageDealer.IsTransformExcluded(collider.transform)) {
            RemoveBullet();
        }
    }

    void RemoveBullet() {
        Destroy(this.gameObject);
    }
}