using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class AnimToRagdoll : MonoBehaviour
{
    //This makes the dinosaur turn into a ragdoll when it dies. All you have to do is attach the Health bar image to the healthBar variable.
    public GameObject ragdollDino;
    public Image healthBar;
    public GameObject animDinosaur;
	void Start ()
    {
        ragdollDino.SetActive(false);
	}
	
	void Update ()
    {
        ragdollDino.transform.position = animDinosaur.transform.position;
	    if (healthBar.fillAmount <= 0)
        {
            ragdollDino.SetActive(true);
            animDinosaur.SetActive(false);
        }
    }
}
