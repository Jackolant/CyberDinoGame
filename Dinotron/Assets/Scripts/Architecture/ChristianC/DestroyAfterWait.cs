using UnityEngine;
using System.Collections;

//Wait a ceertian amount of time than Destroy the game object.
public class DestroyAfterWait : MonoBehaviour {

    public float waitTime = 0f;

	// Use this for initialization
	void Start () {
        StartCoroutine(Wait());
	}
	
	// Update is called once per frame
	IEnumerator Wait () {
        yield return new WaitForSeconds(waitTime);
        Destroy(gameObject);
	}
}
