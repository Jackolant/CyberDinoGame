using UnityEngine;
using System.Collections;
using UnityEngine.Networking;

public class CameraFollow : MonoBehaviour {
    public Transform target;
    public float m_speed = 0.1f;
    public Vector3 offset = new Vector3(0, 5, -10);
    Camera mycam;

    // Use this for initialization
    void Start()
    {
        mycam = GetComponent<Camera>();
        StartCoroutine(moveCamera());
    }

    // Update is called once per frame
    public IEnumerator moveCamera()
    {
        while (true)
        {
            //if (!isLocalPlayer)
            //{
            //    mycam.enabled = false;
            //}
            //else
            //{
            //    mycam.enabled = true;
            //}

            //mycam.orthographicSize = (Screen.height / 100f) / 2f;

            if (target)
            {
                transform.position = Vector3.Lerp(transform.position, target.position + offset, m_speed);
            }
            yield return null;
        }
    }
}
