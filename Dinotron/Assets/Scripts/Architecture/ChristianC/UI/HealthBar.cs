using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class HealthBar : MonoBehaviour {

    public DinoCharacter dino;
    public Image healthBar;

    void OnEnable() {
        dino.HealthChangePercentage += UpdateHealthBar;
    }

    void OnDisable() {
        dino.HealthChangePercentage -= UpdateHealthBar;
    }

    void UpdateHealthBar(float percentage) {
        healthBar.fillAmount = percentage;
    }
}
