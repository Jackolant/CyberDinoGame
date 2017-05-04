using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//Flips through an array of Sprites to get the right one based on player number.
public class PlayerLabel : MonoBehaviour {

    public WorldDinoUI worldDinoUI;
    public Image image;
    public Sprite[] labelTextures;

	// Use this for initialization
	void Start () {
        ChangeLabelSprite();
    }

    void OnValidate() {
        ChangeLabelSprite();
    }

    void ChangeLabelSprite() {
        if (worldDinoUI.dinoPlayerNumber >= 1 && worldDinoUI.dinoPlayerNumber <= PlayerManager.MaxPlayerCount) {
            image.enabled = true;
            image.sprite = labelTextures[worldDinoUI.dinoPlayerNumber - 1];
        } else {
            image.enabled = false;
        }
    }
}
