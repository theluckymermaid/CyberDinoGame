using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PrototypeWorldHealthBar : MonoBehaviour {

    public Image bar;
    public PrototypeDamageable damageable;
    public Camera mainCamera;

	// Use this for initialization
	void Start () {
        damageable.onHealthChange += ResizeBar;
	}

    void OnDestroy() {
        damageable.onHealthChange -= ResizeBar;
    }
	
	// Update is called once per frame
	void Update () {
        GetComponent<Canvas>().transform.LookAt(mainCamera.transform);
	}

    void ResizeBar(int currentHealth, int maxHealth) {
        bar.rectTransform.localScale = new Vector3((float)currentHealth / (float)maxHealth, 1f, 1f);
    }
}
