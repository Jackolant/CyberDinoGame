using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class DinoConfig : ScriptableObject {

    public GameObject dinoPrefab;

    public Texture2D largeImage;
    public Texture2D smallImage;
    public string dinoName;
    public string description;
    public float healthRating;
    public float attackRating;
    public float speedRating;

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/DinoConfig")]
    public static void CreatePlayerInputConfig() {
        DinoConfig config = ScriptableObject.CreateInstance<DinoConfig>();
        AssetDatabase.CreateAsset(config, "Assets/NewDinoConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
