using UnityEngine;
using System.Collections;

public class stopBullet_AH : MonoBehaviour {

    private void OnCollisionEnter(Collision collision)
    {
        if (GetComponent<Rigidbody>().isKinematic == false)
        {
            GetComponent<Rigidbody>().isKinematic = true;
            gameObject.SetActive(false);
        }
    }
}
