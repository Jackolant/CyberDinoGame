using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//Draw the game character's health.
public class HealthBar : MonoBehaviour {

    public DinoUI dinoUI;
    public Image healthBar;

    void OnEnable() {
        dinoUI.gameCharacter.HealthChangePercentage += UpdateHealthBar;
    }

    void OnDisable() {
        dinoUI.gameCharacter.HealthChangePercentage -= UpdateHealthBar;
    }

    void UpdateHealthBar(float percentage) {
        healthBar.fillAmount = percentage;
    }
}
