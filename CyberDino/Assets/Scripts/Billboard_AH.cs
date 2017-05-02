using UnityEngine;
using System.Collections;

public class Billboard : MonoBehaviour {
    void Update()
    {
        transform.rotation = Camera.main.transform.rotation;
    }
}
