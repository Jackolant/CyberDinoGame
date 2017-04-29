using UnityEngine;
using System.Collections;

public class MovingAndTurningHealthBar : MonoBehaviour
{
    //This script rotates the health bar to look wherever the other players are, so they can always see it.
    public GameObject player;
    int smooth = 5;
    Quaternion targetRotation;


    void Update()
    {
        if (player != null)
        {
            targetRotation = Quaternion.LookRotation(player.transform.position - transform.position);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, smooth * Time.deltaTime);
        }
    }
}

/* I have a scene set up for how the healthbar should look and where it should be. So you can look at that and also at these directions to help you
implement it into the game. You can open up the scene called "MultiplayerHUD" To see how I set up the healthbar.

First, I added this script to each of the "Display Health to Player" prefabs.

Then I added the actual player game object to the player variable (that's in this script) in the inspector. So for "Display Health to Player 1", I added the player 1 game object in the inspector, etc.*/

