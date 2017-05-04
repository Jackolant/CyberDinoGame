using UnityEngine;
using System.Collections;
using System;

//Armor takes a certain amount of damage, then pops off of the main body once it is destroyed.
[RequireComponent(typeof(Rigidbody))]
public class HitboxDinoArmor : Hitbox {

    public float health = 0;
    public float maxHealth = 200;
    public float debrisTime = 4f;
    public Transform coveredPart;

    private Transform tr;
    private new Collider collider;
    private new Rigidbody rigidbody;
    private new Renderer renderer;
    private Material material;
    private Color startingColor;

    // Use this for initialization
    void Start() {
        health = maxHealth;

        tr = transform;
        collider = GetComponent<Collider>();
        rigidbody = GetComponent<Rigidbody>();

        //If the armor's still whole, it better not go anywhere.
        rigidbody.isKinematic = true;

        renderer = GetComponent<Renderer>();
        material = renderer.material;
        startingColor = material.color;
    }

    public override int GetHitPriority() {
        return 0;
    }

    public override bool CanBeHit(DamageDealer damageDealer) {
        return health > 0;
    }

    protected override void ResolveDamage(DamageDealer damageDealer) {

        // Right now the armor piece only gets darker in color, but this should probably be replaced with more fancy code in the future.
        // (Blend Shapes anyone?)
        health -= damageDealer.damage;
        float t = (1 - (health / maxHealth)) * 0.5f;
        material.color = Color.Lerp(startingColor, Color.black, t);

        if (health <= 0) {
            //Go! Be a physics object! Be free!
            collider.isTrigger = false;
            rigidbody.isKinematic = false;
            tr.parent = null;
            gameObject.layer = LayerMask.NameToLayer("Can't Be Hit");

            //Pop off!
            rigidbody.AddForce((tr.position - coveredPart.position).normalized * 10f, ForceMode.VelocityChange);

            //And poof after a while.
            StartCoroutine(Dissapear());
        }
    }

    private IEnumerator Dissapear() {
        yield return new WaitForSeconds(debrisTime);
        Destroy(gameObject);
    }
}
