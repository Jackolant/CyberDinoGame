using UnityEngine;
using UnityEngine.UI;
using System.Collections;

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
