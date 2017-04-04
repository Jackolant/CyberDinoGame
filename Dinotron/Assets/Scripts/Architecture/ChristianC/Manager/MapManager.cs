using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections.Generic;

public class MapManager : MonoBehaviour {

    public Transform allPlayersGroupTransform;
    public Transform[] playerSpawnPoints;
    public static MapManager instance;

    public GameObject playerCameraPrefab;
    public GameObject dinoHUDUIPrefab;
    public GameObject dinoWorldUIPrefab;

    public PlayerData[] players;
    private int alivePlayers;

    public Timer timer;
    public Text displayText;

    private float lastRestartPressTime = 0;

	// Use this for initialization
	void OnEnable () {
        instance = this;
        InputManager.AddButtonDelegate("Cancel", Restart);
        GameCharacter.CharacterDeath += OnDinoDeath;
	}

    void OnDisable() {
        instance = null;
        InputManager.RemoveButtonDelegate("Cancel", Restart);
        GameCharacter.CharacterDeath -= OnDinoDeath;
    }

    void Restart(ButtonState button) {
        if (button.Pressed) {
            if (lastRestartPressTime != 0 && (Time.time - lastRestartPressTime <= 0.5f)) {
                SceneManager.LoadScene("MenuTest");
            } else {
                lastRestartPressTime = Time.time;
            }
        }
    }

    void Start() {
        InstanceSpawnPlayers();
        alivePlayers = players.Length;
    }

    public static void SpawnPlayers() {
        if (instance) {
            instance.InstanceSpawnPlayers();
        }
    }

    private void InstanceSpawnPlayers() {
        players = new PlayerData[PlayerManager.PlayerCount];
        for (int i = 1; i <= PlayerManager.PlayerCount; i++) {
            players[i - 1] = SpawnPlayer(i);
        }
        for (int i = 1; i <= PlayerManager.PlayerCount; i++) {
            for (int j = 1; j <= PlayerManager.PlayerCount; j++) {
                if (i != j) {
                    CreatePlayerWorldUI(i, j);
                }
            }
        }
    }

    private PlayerData SpawnPlayer(int playerNumber) {
        // First create the empty object that will contain all the player dino objects.
        GameObject playerGroupObject = new GameObject("Player " + playerNumber);
        Transform playerGroupTransform = playerGroupObject.transform;
        playerGroupTransform.parent = allPlayersGroupTransform;

        // Instantiate a Dino for the player based on what they have chosen through the PlayerManager

        // Fetch the spawn point's information.
        Vector3 spawnPosition = playerSpawnPoints[playerNumber - 1].position;
        Quaternion spawnRotation = playerSpawnPoints[playerNumber - 1].rotation;
        
        // Create the player's dino
        GameObject dinoObject = (GameObject)Instantiate(PlayerManager.PlayerDinos[playerNumber - 1], spawnPosition, spawnRotation, playerGroupTransform);
        Transform dinoTransform = dinoObject.transform;
        GameCharacter dinoCharacter = dinoObject.GetComponent<GameCharacter>();

        // Create the player's camera
        GameObject cameraObject = (GameObject)Instantiate(playerCameraPrefab, spawnPosition, spawnRotation, playerGroupTransform);
        Camera playerCamera = cameraObject.GetComponent<Camera>();
        PlayerOrbitCamera dinoCamera = cameraObject.GetComponent<PlayerOrbitCamera>();

        // Create the player's HUD UI
        GameObject hudUIObject = (GameObject)Instantiate(dinoHUDUIPrefab, playerGroupTransform);
        DinoUI dinoUI = hudUIObject.GetComponent<DinoUI>();

        // Creation of the World UI objects is handled later.

        // Add the player control component to the dino.
        PlayerControl playerControl = dinoObject.AddComponent<PlayerControl>();

        // Configure all the components.

        // Player Control
        playerControl.playerNumber = playerNumber;
        playerControl.playerCamera = dinoCamera;
        playerControl.dino = dinoCharacter;
        playerControl.inputConfig = PlayerManager.GetConfigForPlayer(playerNumber);

        // Camera
        playerCamera.cullingMask = PlayerManager.GetCameraLayerMaskForPlayer(playerNumber);
        playerCamera.rect = PlayerManager.GetCameraRectForPlayer(playerNumber);
        dinoCamera.playerControl = playerControl;
        dinoCamera.target = dinoTransform;

        // Disable the audio listener if we're not player 1. Unity freaks out about this.
        if (playerNumber != 1) {
            AudioListener audio = cameraObject.GetComponent<AudioListener>();
            audio.enabled = false;
        }

        // UI Script
        dinoUI.gameCharacter = dinoCharacter;
        dinoUI.playerCamera = playerCamera;
        dinoUI.playerNumber = playerNumber;

        // Enable everything here. Prefabs are disabled by default so they don't try to load things in before they're configured.
        dinoObject.SetActive(true);
        cameraObject.SetActive(true);
        hudUIObject.SetActive(true);

        // Add PlayerData component to the player group object.
        PlayerData data = playerGroupObject.AddComponent<PlayerData>();

        // Fill out the data
        data.playerNumber = playerNumber;

        data.dinoObject = dinoObject;
        data.dinoCharacter = dinoCharacter;
        data.playerControl = playerControl;

        data.cameraObject = cameraObject;
        data.playerCamera = playerCamera;
        data.dinoCamera = dinoCamera;

        data.hudUIObject = hudUIObject;
        data.dinoUI = dinoUI;

        // And return it
        return data;
    }

    private void CreatePlayerWorldUI(int playerNumber, int playerViewer) {
        PlayerData data = players[playerNumber - 1];

        PlayerData viewerdata = players[playerViewer - 1];

        // Create world UI object
        GameObject worldUIObject = (GameObject)Instantiate(dinoWorldUIPrefab, data.dinoObject.transform);
        WorldDinoUI worldDinoUI = worldUIObject.GetComponent<WorldDinoUI>();

        // Configure world UI object
        worldDinoUI.gameCharacter = data.dinoCharacter;
        worldDinoUI.playerCamera = viewerdata.playerCamera;
        worldDinoUI.playerNumber = viewerdata.playerNumber;
        worldDinoUI.dinoPlayerNumber = data.playerNumber;

        // Enable the object
        worldUIObject.SetActive(true);

        // Add it to the player data.
        data.AddWorldUIData(worldUIObject, worldDinoUI);
    }

    private void OnDinoDeath(GameCharacter dino) {
        PlayerControl playerControl = dino.GetComponent<PlayerControl>();
        if (playerControl != null) {
            alivePlayers--;

            PlayerData data = players[playerControl.playerNumber - 1];
            data.alive = false;
            data.deathTime = Time.time;

            if (alivePlayers == 1) {
                EndMatchByElimination();
            }
        }
    }

    private void EndMatchByElimination() {
        timer.enabled = false;
        timer.StopAllCoroutines();
        PlayerData winner = null;
        foreach (PlayerData data in players) {
            if (data.dinoCharacter.CurrentHealth > 0) {
                winner = data;
            }
        }
        displayText.text = "W i n n e r :  P " +  winner.playerNumber + "\nP r e s s  E S C  t w i c e\nt o  R e s t a r t";
    }

    public void EndMatchByTimeout() {
        //Determine time out winners.
        List<PlayerData> winners = new List<PlayerData>();
        float winnerHealth = 0f;
        foreach (PlayerData data in players) {
            if (winners.Count == 0 && data.dinoCharacter.CurrentHealth > 0) {
                winners.Add(data);
                winnerHealth = data.dinoCharacter.CurrentHealth;
            } else if (data.dinoCharacter.CurrentHealth == winnerHealth) {
                winners.Add(data);
            } else if (data.dinoCharacter.CurrentHealth > winnerHealth) {
                winners.Clear();
                winners.Add(data);
                winnerHealth = data.dinoCharacter.CurrentHealth;
            }
        }

        //Kill those who didn't win.
        foreach (PlayerData data in players) {
            if (!winners.Contains(data)) {
                data.dinoCharacter.CurrentHealth = 0;
            }
        }

        //Tell em who won.
        if (winners.Count == 1) {
            displayText.text = "W i n n e r :  P " + winners[0].playerNumber;
        } else {
            string s = "T i e :";
            foreach (PlayerData data in winners) {
                s += "  P " + data.playerNumber;
            }
            displayText.text = s;
        }

        displayText.text += "\nP r e s s  E S C  t w i c e\nt o  R e s t a r t";
    }
}
