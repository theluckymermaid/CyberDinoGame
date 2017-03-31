using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PrototypeHealthText : MonoBehaviour {

    public PrototypeDamageable damagable;

	// Use this for initialization
	void Start () {
        damagable.onHealthChange += HealthUpdate;
	}
	
    void OnDestroy() {
        damagable.onHealthChange -= HealthUpdate;
    }

    void HealthUpdate(int current, int max) {
        GetComponent<Text>().text = current + "/" + max;
    }
}
