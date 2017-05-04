using UnityEngine;
using System.Collections;

// Test to see if loading info from uninstantiated prefabs was possible.
// It turned out to be possible.
public class PrefabLoadingTest : MonoBehaviour {

    public GameObject prefab;

	// Use this for initialization
	void Start () {
        
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    void OnGUI() {
        GameCharacter gameCharacter = prefab.GetComponent<GameCharacter>();
        GUILayout.BeginVertical("box");
        {
            GUILayout.Label(gameCharacter.MaxHealth.ToString());
            GUILayout.Label(gameCharacter.MaxHeat.ToString());
            GUILayout.Label(gameCharacter.speed.ToString());
            GUILayout.Label(gameCharacter.ActiveWeapon.damage.ToString());
            GUILayout.Label((gameCharacter.ActiveWeapon as AutomaticWeapon).fireDelay.ToString());
        }
        GUILayout.EndVertical();
    }
}
