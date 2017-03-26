using UnityEngine;
using System;
using System.Collections;

public class DinoCharacter : MonoBehaviour {

    public RigidbodyCharacterMotor motor;

    //Inputs
    [HideInInspector]
    public Vector3 moveInput = Vector3.zero;
    [HideInInspector]
    public bool sprintInput = false;
    [HideInInspector]
    public bool jumpInput = false;
    [HideInInspector]
    public Vector3 aimPoint = Vector3.zero;
    [HideInInspector]
    // You can only politely ask that you'd like the Dino to fire it's weapon.
    public bool fireInput = false;

    public bool IsSprinting
    {
        get { return !overheated && sprintInput && moveInput != Vector3.zero; }
    }

    public float speed;
    public float sprintSpeed;
    public float sprintHeatCostPerSecond;

    [SerializeField]
    private float currentHealth;
    [SerializeField]
    private float maxHealth;

    public float CurrentHealth
    {
        get { return currentHealth; }
        set
        {
            currentHealth = value;
            UpdateHealthChange();
        }
    }

    public float MaxHealth
    {
        get { return maxHealth; }
        set
        {
            maxHealth = value;
            UpdateHealthChange();
        }
    }

    [SerializeField]
    private float currentHeat;
    [SerializeField]
    private float maxHeat;
    public float heatCooldownPerSecond;

    public float overheatWaitPeriod;
    [Range(0f, 1f)]
    public float overheatWaitUntilPercentage;
    [SerializeField]
    [HideInInspector]
    private float overheatedAtTime = 0;

    public float CurrentHeat
    {
        get { return currentHeat; }
        set
        {
            currentHeat = value;
            UpdateHeatChange();
        }
    }

    public float MaxHeat
    {
        get { return maxHeat; }
        set
        {
            maxHeat = value;
            UpdateHeatChange();
        }
    }

    [SerializeField]
    [HideInInspector]
    private bool overheated = false;
    public bool Overheated
    {
        get { return overheated; }
    }

    public PrototypeWeapon weapon;

    public Action<float> HealthChangePercentage;
    public Action<float, float> HealthChange;
    public Action HeyIDied;

    public Action<float> HeatChangePercentage;
    public Action<float, float> HeatChange;
    public Action<bool> Overheat;

    private void UpdateHealthChange() {
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (HealthChange != null) {
            HealthChange(currentHealth, maxHealth);
        }

        if (HealthChangePercentage != null) {
            HealthChangePercentage.DynamicInvoke(currentHealth / maxHealth);
        }

        if (currentHealth == 0 && HeyIDied != null) {
            HeyIDied();
        }
    }

    private void UpdateHeatChange() {
        currentHeat = Mathf.Clamp(currentHeat, 0, maxHeat);

        if (HeatChange != null) {
            HeatChange(currentHeat, maxHeat);
        }

        if (HeatChangePercentage != null) {
            HeatChangePercentage(currentHeat / maxHeat);
        }

        // Check wether or not we fulfil the condition for being overheated or not overheated.
        if (!overheated) {
            if (currentHeat >= maxHeat) {
                overheated = true;
                if (Overheat != null) {
                    Overheat(true);
                }
            }
        } else {
            if (currentHeat / maxHeat <= overheatWaitUntilPercentage) {
                overheated = false;
                if (Overheat != null) {
                    Overheat(false);
                }
            }
        }
    }

    void Start() {
        UpdateHealthChange();
        UpdateHeatChange();
    }

    // Character physics!
    void FixedUpdate() {

        //Move the character!
        motor.Move(Time.fixedDeltaTime);

        //Add sprinting heat cost
        if (IsSprinting) {
            CurrentHeat += sprintHeatCostPerSecond * Time.fixedDeltaTime;
        }
    }

	// Update is called once per frame
	void Update () {
        // Fire the weapon!
        if (fireInput && !overheated && weapon != null) {
            if (weapon.Fire()) {
                CurrentHeat += weapon.heat;
            }
        }

        // Update heat cooling
        if (!overheated || (overheated && (overheatedAtTime + overheatWaitPeriod <= Time.time))) {
            CurrentHeat -= heatCooldownPerSecond * Time.deltaTime;
        }
	}

    void OnValidate() {

        speed = Mathf.Max(0, speed);
        sprintSpeed = Mathf.Max(0, sprintSpeed);
        sprintHeatCostPerSecond = Mathf.Max(0, sprintHeatCostPerSecond);

        if (Application.isPlaying) {
            CurrentHealth = currentHealth;
            CurrentHeat = currentHeat;
        } else {
            maxHealth = Mathf.Max(0, maxHealth);
            currentHealth = maxHealth;

            currentHeat = 0;
            maxHeat = Math.Max(0, maxHeat);
        }

        heatCooldownPerSecond = Mathf.Max(0, heatCooldownPerSecond);
        overheatWaitPeriod = Math.Max(0, overheatWaitPeriod);
        overheatWaitUntilPercentage = Mathf.Clamp01(overheatWaitUntilPercentage);
    }

#if UNITY_EDITOR
    public bool showDebugInfo = false;

    void OnGUI() {
        if (showDebugInfo) {
            GUILayout.Label("Health: " + currentHealth + "/" + maxHealth);
            GUILayout.Label("Heat: " + currentHeat + "/" + maxHeat);
            GUILayout.Label("Overheated: " + overheated);
        }
    }
#endif
}
