using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

public class PlayerController : MonoBehaviour
{
    private static Vector3 lastPosition;
    public float MoveSpeed = 40, RotateSpeed = 50;
    public float jumpVelocity = 20;
    public float gravity = 20;
    public GameObject bulletPrefab;
    public Transform bulletSpawn;
    private float fireRate = 0.25f;
    private float timeStamp;
    public bool canShoot = true;
    private CharacterController controller;
    public bool IsMoving { get; private set; }
    private float yVelocity = 0;

    private void Awake()
    {
        controller = GetComponent<CharacterController>();
    }

    void Start()
    {
        Application.runInBackground = true;
        //if (!isLocalPlayer)
        //    return;
        StartCoroutine(movePlayer());
        OnStartLocalPlayer();
    }

    public IEnumerator movePlayer()
    {
        while (true)
        {
            float MoveForward, MoveRotate;
            MoveForward = Input.GetAxis("Vertical") * MoveSpeed;
            MoveRotate = Input.GetAxis("Horizontal") * RotateSpeed * Time.deltaTime;

            //Jumping
            if (Input.GetButtonDown("Jump") && (controller.collisionFlags & CollisionFlags.Below) != 0)
            {
                yVelocity = jumpVelocity;
            }

            //Gravity
            yVelocity -= gravity * Time.deltaTime;

            // Move the player
            //transform.Translate(Vector3.forward * MoveForward);
            Vector3 velocity = (transform.forward * MoveForward);
            velocity.y = yVelocity;
            controller.Move(velocity * Time.deltaTime);
            transform.Rotate(Vector3.up * MoveRotate);

            //Post Move
            if (lastPosition != transform.position)
            {
                lastPosition = transform.position;
                IsMoving = true;
            }
            else
            {
                IsMoving = false;
            }

            //Cancel yVelocity if we hit the floor
            if ((controller.collisionFlags & CollisionFlags.Below) != 0)
            {
                yVelocity = Mathf.Max(0, yVelocity);
            }
            if (Input.GetButtonDown("Fire1") && Time.time >= timeStamp/* && canShoot == true*/)
            {
                CmdFire();
                //StartCoroutine(Shoot());
            }
            yield return null;
        }
    }

    /*public IEnumerator Shoot()
    {
        canShoot = false;
        yield return new WaitForSeconds(.25f);
        // Create the Bullet from the Bullet Prefab
        var bullet = (GameObject)Instantiate(bulletPrefab, bulletSpawn.position, bulletSpawn.rotation);

        // Add velocity to the bullet
        bullet.GetComponent<Rigidbody>().velocity = bullet.transform.forward * 6; //6 is speed of bullet
        canShoot = true;

        // Spawn the bullet on the Clients
        NetworkServer.Spawn(bullet);


        // Destroy the bullet after 2 seconds
        Destroy(bullet, 2.0f);
    }*/

    //[Command] //indicates that the function will be called by Client, but will be run on Server
    void CmdFire()
    {
        // Create the Bullet from the Bullet Prefab
        var bullet = (GameObject)Instantiate(bulletPrefab, bulletSpawn.position, bulletSpawn.rotation);

        // Add velocity to the bullet
        bullet.GetComponent<Rigidbody>().velocity = bullet.transform.forward * 40;

        // Spawn the bullet on the Clients
        //NetworkServer.Spawn(bullet);
        timeStamp = Time.time + fireRate;
        // Destroy the bullet after 2 seconds
        Destroy(bullet, 2.0f);

    }

    public void OnStartLocalPlayer()
    {
        GetComponent<MeshRenderer>().material.color = Color.blue;
        CameraFollow camFollow = Camera.main.GetComponent<CameraFollow>();
        camFollow.target = transform;
        camFollow.transform.position = transform.position;
        camFollow.enabled = true;
    }

}

