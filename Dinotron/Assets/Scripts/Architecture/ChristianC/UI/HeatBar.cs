using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//Working parts copied from what was inside CodyA's code.
public class HeatBar : MonoBehaviour {

    public DinoUI dinoUI;

    public Image heatBarImage;
    public Image hearBarBackgroundImage;
    public Color startColor = Color.yellow;
    public Color endColor = Color.red;
        
    void Start() {
        heatBarImage.fillAmount = 0;
        hearBarBackgroundImage.fillAmount = 1;
        heatBarImage.color = startColor;
    }

    void OnEnable() {
        dinoUI.gameCharacter.HeatChangePercentage += UpdateHeatBar;
    }

    void OnDisable() {
        dinoUI.gameCharacter.HeatChangePercentage -= UpdateHeatBar;
    }

    private void UpdateHeatBar(float percentage) {
        //Add heat to bar
        heatBarImage.fillAmount = percentage;
        hearBarBackgroundImage.fillAmount = 1f - percentage;

        //Change color of bar and overlay
        if (!dinoUI.gameCharacter.Overheated) {
            heatBarImage.color = Color.Lerp(startColor, endColor, percentage);
        } else {
            heatBarImage.color = endColor;
        }
    }
}
