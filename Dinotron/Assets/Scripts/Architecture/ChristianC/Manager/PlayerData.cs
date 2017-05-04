using UnityEngine;
using System.Collections;

//A class to hold all the information in a scene about any player that is spawned by the MapManager.
public class PlayerData : MonoBehaviour {

    public int playerNumber;
    public bool alive = true;
    public float deathTime = 0;

    public GameObject dinoObject;
    public GameCharacter dinoCharacter;
    public PlayerControl playerControl;

    public GameObject cameraObject;
    public Camera playerCamera;
    public PlayerOrbitCamera dinoCamera;

    public GameObject hudUIObject;
    public DinoUI dinoUI;

    [System.Serializable]
    public class WorldUIData {
        public GameObject worldUIObject;
        public WorldDinoUI worldDinoUI;

        public WorldUIData(GameObject worldUIObject, WorldDinoUI worldDinoUI) {
            this.worldUIObject = worldUIObject;
            this.worldDinoUI = worldDinoUI;
        }
    }
    
    public WorldUIData[] worldUIs = new WorldUIData[0];

	public void AddWorldUIData(GameObject worldUIObject, WorldDinoUI worldDinoUI) {
        WorldUIData[] newWorldUIs = new WorldUIData[worldUIs.Length + 1];
        for (int i = 0; i < worldUIs.Length; i++) {
            newWorldUIs[i] = worldUIs[i];
        }

        WorldUIData data = new WorldUIData(worldUIObject, worldDinoUI);
        newWorldUIs[newWorldUIs.Length - 1] = data;

        worldUIs = newWorldUIs;
    }
}
