using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class FireBullets_AH_JR : MonoBehaviour {
    public List<GameObject> bulletPool;
    public GameObject bullet1;
    public GameObject bullet2;
    public GameObject bullet3;
    public GameObject bullet4;
    public GameObject bullet5;
    public GameObject bullet6;
    public GameObject bullet7;
    private int bulletPoolCount = 0;
    public Transform bulletSpawnPoint;
    public float bulletSpeed = 500;
    

    // Use this for initialization
    void Start () {
        bulletPool = new List<GameObject>();
        bulletPool.Add(bullet1);
        bulletPool.Add(bullet2);
        bulletPool.Add(bullet3);
        bulletPool.Add(bullet4);
        bulletPool.Add(bullet5);
        bulletPool.Add(bullet6);
        bulletPool.Add(bullet7);
    }
	
	// Update is called once per frame
	void Update () {
        if (Input.GetButtonDown("Fire1"))
        {
            Fire();
        }

    }

    void Fire()
    {

        
        if (bulletPoolCount < 7)
        {
            GameObject bullet = bulletPool[bulletPoolCount];
            bullet.transform.position = bulletSpawnPoint.transform.position;
            bullet.SetActive(true);
            // Add velocity to the bullet
            bullet.GetComponent<Rigidbody>().isKinematic = true;
            bullet.GetComponent<Rigidbody>().isKinematic = false;
            bullet.GetComponent<Rigidbody>().AddForce(bulletSpawnPoint.forward * bulletSpeed);
            
            //StartCoroutine(bulletGone());
            bulletPoolCount++;
        }
        else
        {
            bulletPoolCount = 0;
            GameObject bullet = bulletPool[bulletPoolCount];
            bullet.transform.position = bulletSpawnPoint.transform.position;
            bullet.SetActive(true);
            // Add velocity to the bullet
            bullet.GetComponent<Rigidbody>().isKinematic = true;
            bullet.GetComponent<Rigidbody>().isKinematic = false;
            bullet.GetComponent<Rigidbody>().AddForce(bulletSpawnPoint.forward * bulletSpeed);
            //StartCoroutine(bulletGone());
        }
    }
    //IEnumerator bulletGone()
    //{
    //    bulletPool[bulletPoolCount].SetActive(false);
    //    yield return new WaitForSeconds(2f);
    //}

}
