using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;
//Jake Ressler
public class ButtonManager : MonoBehaviour
{
    public string sceneNext;
    void Start() {
        Cursor.lockState = CursorLockMode.None;
    }

    public void PlayerBtn(int count)
    {
		PlayerManager.PlayerCount = count;
        SceneManager.LoadScene(sceneNext);
    }
		
}
