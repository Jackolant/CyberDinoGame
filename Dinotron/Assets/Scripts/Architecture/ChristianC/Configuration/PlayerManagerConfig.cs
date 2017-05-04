using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PlayerManagerConfig : ScriptableObject {

    public int maxPlayers = 4;
    public PlayerInputConfig[] inputConfigs;
    public PlayerCamerasConfig[] cameraLayouts;
    public LayerMask[] playerCameraLayerMasks;
    public int[] playerUILayers;
    public LayerMask playerAimMask;

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/Player Manager/PlayerManagerConfig")]
    public static void CreatePlayerInputConfig() {
        PlayerManagerConfig config = ScriptableObject.CreateInstance<PlayerManagerConfig>();
        AssetDatabase.CreateAsset(config, "Assets/PlayerManagerConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
