using UnityEngine;
using UnityEngine.UI;
using System.Collections;

//Working parts copied from what was inside CodyA's code.
public class HeatBar : MonoBehaviour {

    public DinoCharacter dino;

    public Image heatBarImage;
    public Image hearBarBackgroundImage;
    public Color startColor = Color.yellow;
    public Color endColor = Color.red;

    private Color overlayColor;
        
    void Start() {
        heatBarImage.fillAmount = 0;
        hearBarBackgroundImage.fillAmount = 1;
        heatBarImage.color = startColor;
    }

    void OnEnable() {
        dino.HeatChangePercentage += UpdateHeatBar;
    }

    void OnDisable() {
        dino.HeatChangePercentage -= UpdateHeatBar;
    }

    private void UpdateHeatBar(float percentage) {
        //Add heat to bar
        heatBarImage.fillAmount = percentage;
        hearBarBackgroundImage.fillAmount = 1f - percentage;

        //Change color of bar and overlay
        if (!dino.Overheated) {
            heatBarImage.color = Color.Lerp(startColor, endColor, percentage);
        } else {
            heatBarImage.color = endColor;
        }
    }
}
