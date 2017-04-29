using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnHall : MonoBehaviour {

    public GameObject Hall;
    public float spawnTime = 7f;
    public GameObject emptyObject;
 
    void Start()
    {
        InvokeRepeating("SpawnBall", spawnTime, spawnTime);
    }

    void SpawnBall()
    {
        var newBall = GameObject.Instantiate(Hall, emptyObject.transform.position, Quaternion.Euler(0, 90, 0));
    }
}
