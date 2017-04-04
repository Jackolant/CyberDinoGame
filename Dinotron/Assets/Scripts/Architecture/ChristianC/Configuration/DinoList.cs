using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class DinoList : ScriptableObject {

    public DinoConfig[] dinos;

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/DinoList")]
    public static void CreatePlayerInputConfig() {
        DinoList config = ScriptableObject.CreateInstance<DinoList>();
        AssetDatabase.CreateAsset(config, "Assets/DinoList.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
