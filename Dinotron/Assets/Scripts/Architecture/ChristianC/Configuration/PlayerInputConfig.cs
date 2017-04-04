using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PlayerInputConfig : ScriptableObject {

    public string moveHorizontalInput = "Horizontal";
    public string moveVerticalInput = "Vertical";
    public string lookHorizontalInput = "Mouse X";
    public string lookVerticalInput = "Mouse Y";
    public string jumpInput = "Jump";
    public string fireInput = "Fire1";
    public string sprintInput = "Fire3";

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/Player Manager/PlayerInputConfig")]
    public static void CreatePlayerInputConfig() {
        PlayerInputConfig config = ScriptableObject.CreateInstance<PlayerInputConfig>();
        AssetDatabase.CreateAsset(config, "Assets/NewPlayerInputConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
