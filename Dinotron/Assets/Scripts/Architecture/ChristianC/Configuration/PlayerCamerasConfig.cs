using UnityEngine;
using System;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PlayerCamerasConfig : ScriptableObject {

    [Serializable]
    public class CameraConfig {
        public Rect rect;
    }

    [SerializeField]
    public CameraConfig[] cameraConfigs;

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/Player Manager/PlayerCamerasConfig")]
    public static void CreatePlayerInputConfig() {
        PlayerCamerasConfig config = ScriptableObject.CreateInstance<PlayerCamerasConfig>();
        AssetDatabase.CreateAsset(config, "Assets/NewPlayerCamerasConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
