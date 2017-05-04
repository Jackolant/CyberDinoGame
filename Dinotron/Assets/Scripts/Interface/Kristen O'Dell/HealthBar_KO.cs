using UnityEngine;
using System.Collections;
using System;
using UnityEngine.UI;

public class HealthBar_KO : MonoBehaviour
{
    //This script decreases the health bar when the player is damaged
    //Variable for the health bar that is displayed to everyone
    public Image healthBar;
    //Variable for the health bar that is displayed on the HUD
    public Image healthBarHUD;

    //This is the amount the healthBar is decreased by
    public float decreasingAmount = .01f;

    //This decreases the health bar a certain amount over a certain amount of time;
    public IEnumerator HealthBarDecreasing()
    {
        float i = 100;
        while (i > 0)
        {
            healthBar.fillAmount -= decreasingAmount;
            healthBarHUD.fillAmount -= decreasingAmount;
            yield return new WaitForSeconds(.1f);
            i -= 20;
        }
    }

    void OnTriggerEnter()
    {
        StartCoroutine(HealthBarDecreasing());
    }
}

/* Instructions:
    1.Add the two prefabs "Display Health to Everyone" and either "Player 1 HUD", "PLayer 2 HUD", "PLayer 3 HUD", or "Player 4 HUD" (depending on the player) to each player. The prefabs are in the folder Prefab->HUD->Health Bar
    2. In each of the Player HUD prefabs add the correct camera to the canvas under Render Camera. For "PLayer 1 HUD", the camera is the player 1 camera. Do not do this for the "Display Health to Everyone" prefab.
    3. Create 4 new layers in the layer tab (Name them "Player 1 Display", "PLayer 2 Display", "Player 3 Display", and "Player 4 Display") for each player.
    4. Change the layer on each of the prefabs named "Display Health to Everyone" to the corresponding layer name. For example, the "Display Health to Everyone" for player 4 (and all of the children) will be in the
    layer, "Player 4 Display".
    5. On each of the player's cameras, under culling mask, deselect the layer name that corresponds to the player. So for player 4, you have to deselect "PLayer 4 Display".
    6. Add this "Health Bar" script to each of the players.
    8. Attach the game objects that have the same name in each prefab to this script in the inspector.
        Example:
             -In the hierarchy, under Player 1 -> Player 1 HUD -> Health Bar Base -> Health Bar HUD (Health Bar HUD attaches to the healthBarHUD GameObject in this script in the inspector)
             -In the hierarchy, under Player 1 -> Display Health to Everyone -> Health Bar Base -> Health Bar (Health Bar attaches to the healthBar GameObject in this script in the inspector)
    */

