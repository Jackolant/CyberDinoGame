using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

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
}
