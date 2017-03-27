using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class DinoLabel : MonoBehaviour {

    public DinoUI dinoUI;
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
        if (dinoUI.playerNumber >= 1 && dinoUI.playerNumber <= PlayerManager.MaxPlayerCount) {
            image.enabled = true;
            image.sprite = labelTextures[dinoUI.playerNumber - 1];
        } else {
            image.enabled = false;
        }
    }
}
