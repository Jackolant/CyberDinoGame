using UnityEngine;
using System.Collections;

//A centralized class for UI scripts to always have an easy reference back to the GameCharacter they're representing.
// There is some code that needs to be done based on every player in Start, but it also playes every child object on itself on the correct player GUI layer.
[RequireComponent(typeof(Canvas))]
public class DinoUI : MonoBehaviour {

    public GameCharacter gameCharacter;
    public Camera playerCamera;
    public int playerNumber;
    protected Canvas canvas;

    public virtual void Start() {
        canvas = GetComponent<Canvas>();
        SetupCanvas();
        int layer = PlayerManager.GetUILayerForPlayer(playerNumber);
        gameObject.layer = layer;
        RecursiveSetChildLayers(transform, layer);
    }

    private void RecursiveSetChildLayers(Transform tr, int layer) {
        foreach(Transform child in tr) {
            child.gameObject.layer = layer;
            if (child.childCount > 0) {
                RecursiveSetChildLayers(child, layer);
            }
        }
    }

    protected virtual void SetupCanvas() {
        canvas.renderMode = RenderMode.ScreenSpaceCamera;
        canvas.worldCamera = playerCamera;
    }

    void OnValidate() {
        playerNumber = Mathf.Min(4, Mathf.Max(1, playerNumber));
    }
}
