using UnityEngine;
using System.Collections;

public class FixedUpdateTest : MonoBehaviour {

    private int counter = 0;	
	// Update is called once per frame
	void FixedUpdate () {
        counter++;
        Debug.Log("Marco! (" + counter + ")");
        StartCoroutine(PostFixedUpdate());
	}

    IEnumerator PostFixedUpdate() {
        yield return new WaitForFixedUpdate();
        counter--;
        Debug.Log("Polo! (" + counter + ")");
    }
}
