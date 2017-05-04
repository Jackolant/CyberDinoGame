using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

// Every scene should have a PlayerManager object if it's going to be doing anything along the lines of spawning dinos or changing player settings.
public class PlayerManager : MonoBehaviour {

    private static PlayerManager instance = null;
    public static PlayerManager Instance
    {
        get { return instance; }
    }

    public static int MaxPlayerCount {
        get
        {
            if (instance) {
                return instance.config.maxPlayers;
            } else {
                return -1;
            }
        }
    }

    public static PlayerInputConfig GetConfigForPlayer(int playerNumber) {
        return instance.config.inputConfigs[playerNumber - 1];
    }

    public static Rect GetCameraRectForPlayer(int playerNumber) {
        return instance.config.cameraLayouts[instance.playerCount - 1].cameraConfigs[playerNumber - 1].rect;
    }

    public static LayerMask GetCameraLayerMaskForPlayer(int playerNumber) {
        return instance.config.playerCameraLayerMasks[playerNumber - 1];
    }

    public static int GetUILayerForPlayer(int playerNumber) {
        return instance.config.playerUILayers[playerNumber - 1];
    }

    public static LayerMask GetPlayerAimMask() {
        return instance.config.playerAimMask;
    }

    public PlayerManagerConfig config;

    [SerializeField]
    private int playerCount = 4;
    public static int PlayerCount
    {
        get
        {
            if (instance) {
                return instance.playerCount;
            } else {
                return -1;
            }
        }
        set
        {
            if (instance) {
                instance.playerCount = Mathf.Min(MaxPlayerCount, Mathf.Max(1, value));
            }
        }
    }

    public GameObject[] playerDinos;
    public static GameObject[] PlayerDinos
    {
        get
        {
            if (instance != null) {
                return instance.playerDinos;
            } else {
                return null;
            }
        }
    }

    // Use this for initialization
    void Awake() {
        // Set ourselves as the singleton instance
        if (instance == null) {
            instance = this;
            DontDestroyOnLoad(gameObject);
        } else {
            Destroy(gameObject);
            return;
        }

        if (playerDinos == null) {
            playerDinos = new GameObject[config.inputConfigs.Length];
        }
    }

    void OnValidate() {
        if (Application.isPlaying && this == instance) {
            PlayerCount = playerCount;
        } else {
            playerCount = Mathf.Min(4, Mathf.Max(1, playerCount));
        }
    }

#if UNITY_EDITOR
    [MenuItem("Dinotron/Set Up/Set Up\\Create PlayerManager")]
    public static void SetupPlayerManager() {
        PlayerManager playerManager = FindObjectOfType<PlayerManager>();

        bool existingManager = playerManager != null;
        if (existingManager) {
            Undo.RegisterCompleteObjectUndo(playerManager.gameObject, "Set Up Player Manager");
        } else {
            GameObject obj = new GameObject();
            playerManager = obj.AddComponent<PlayerManager>();
        }

        //Make the name correct.
        playerManager.gameObject.name = "Player Manager";
        
        // Make sure it has a config file.
        if (playerManager.config == null) {
            string[] guids = AssetDatabase.FindAssets("t:" + typeof(PlayerManagerConfig).Name);
            if (guids.Length >= 1) {
                playerManager.config = AssetDatabase.LoadAssetAtPath<PlayerManagerConfig>(AssetDatabase.GUIDToAssetPath(guids[0]));
            }
        }

        //Make sure it has a correct player count
        if (existingManager) {
            playerManager.playerCount = Mathf.Clamp(playerManager.playerCount, 1, playerManager.config.maxPlayers);
        } else {
            playerManager.playerCount = playerManager.config.maxPlayers;
        }

        //Make sure it has a playerDino list set up.
        if (playerManager.playerDinos == null) {
            playerManager.playerDinos = new GameObject[playerManager.config.maxPlayers];
        } else if (playerManager.playerDinos.Length != playerManager.config.maxPlayers) {
            GameObject[] newArray = new GameObject[playerManager.config.maxPlayers];
            for (int i = 0; i < newArray.Length || i < playerManager.playerDinos.Length; i++) {
                newArray[i] = playerManager.playerDinos[i];
            }
            playerManager.playerDinos = newArray;
        }

        if (!existingManager) {
            Undo.RegisterCreatedObjectUndo(playerManager.gameObject, "Create and Set Up Player Manager");
        }
    }
#endif
}
