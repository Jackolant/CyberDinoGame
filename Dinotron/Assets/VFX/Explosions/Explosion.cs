using UnityEngine;
using System.Collections;

//when you attach this script to an object, the explosion will happen when you click on the abject with the mouse

public class Explosion : MonoBehaviour {

	public float force;
	public float radius;

	public GameObject explosion;

	void OnMouseDown ()
	{
		Collider[] colliders = Physics.OverlapSphere (transform.position, radius);

		foreach (Collider c in colliders) 
		{
			if (c.GetComponent<Rigidbody>() == null)
				continue;

			c.GetComponent<Rigidbody>().AddExplosionForce (force, transform.position, radius, .5f, ForceMode.Impulse);
			
		}

		Instantiate (explosion, transform.position, Quaternion.identity);

		Destroy (this.gameObject);
	}
		
}
