using UnityEngine;
using System.Collections;

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
