using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;

public class GameOverManager : MonoBehaviour
{
    public string rematchScene; // ASSIGN THE SCENE NAMES HERE
    public string mainMenu;     // .......................

    Animator anim;             // Reference to the animator component.

    //PlayerManager playerManager = FindObjectOfType<PlayerManager>();

    void Awake()
    {
        // Set up the reference.
        anim = GetComponent<Animator>();
    }

    void Update()
    {
        // If there is one player remaining
        //if (playerManager.playerCount == 1)
        {
            // ... tell the animator the game is over.
            anim.SetTrigger("GameOver");
        }
    }

    public void rematchButton()
    {
        SceneManager.LoadScene(rematchScene);
    }

    public void mainMenuButton()
    {
        SceneManager.LoadScene(mainMenu);
    }
}
