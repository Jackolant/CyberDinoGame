using UnityEngine;
using System.Collections;

public class spawnTest_JR : MonoBehaviour {
    public GameObject bullet1;
    public GameObject bullet2;
    public GameObject bullet3;
    public GameObject bullet4;
    public GameObject bullet5;
    public GameObject bullet6;
    public GameObject bullet7;
    public Transform spawn;

    private void OnCollisionEnter(Collision Collision)
    {
        if(Collision.transform.tag == "Bullet")
        {

            gameObject.transform.position = spawn.transform.position;
        }
    }
}
