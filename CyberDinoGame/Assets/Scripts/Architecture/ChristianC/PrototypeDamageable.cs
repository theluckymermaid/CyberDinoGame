using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeDamageable : MonoBehaviour {

    public int maxHealth;
    public int currentHealth;

    public float regenRate; //Health regenerated per second.
    private float regenCounter; //Do we have enough regened to gave whole ints of health?

    public delegate void OnHealthChange(int current, int max);
    public OnHealthChange onHealthChange;

	// Use this for initialization
	void Start () {
		
	}
	
    void Awake() {
        if (onHealthChange != null)
            onHealthChange(currentHealth, maxHealth);
    }

	// Update is called once per frame
	void Update () {
        regenCounter += regenRate * Time.deltaTime;
        //
        if (regenCounter >= 1f) {
            //Casting floors the float.
            int healthGained = (int)regenCounter;
            //Turn the counter back into it's fractional part
            regenCounter -= healthGained;
            ChangeHealth(healthGained);
        }
	}

    public void ChangeHealth(int amount) {
        //Hold new health in a temp Clamped variable.
        int newHealth = Mathf.Clamp(currentHealth + amount, 0, maxHealth);

        //Did anything actually change?
        if (newHealth != currentHealth) 
            if (onHealthChange != null)
                onHealthChange(newHealth, maxHealth);

        //Now update current health.
        currentHealth = newHealth;
    }
}
