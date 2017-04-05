using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

// This script holds, keeps track of, and sends delegates for a GameCharacter's vital statisics.
// It also handles the interpretation of input.
// If a GameCharacter does not also have a CharacterMotor component on it, it cannot move.
// If a GameCharacter does not have a CharacterGun and a Weapon, it cannot fire.
public class GameCharacter : MonoBehaviour {

    public CharacterMotor motor;

    // Inputs
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
        // We can't sprint if we're overheated or if we don't have any move input!
        get { return !overheated && sprintInput && moveInput != Vector3.zero; }
    }

    // Movement settings
    public float speed;
    public float sprintSpeed;
    public float sprintHeatCostPerSecond;
    public float jumpHeight;

    // Health settings
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

    // Heat settings
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
    public bool Overheated { get { return overheated; } }

    // Delegates for Health, Heat, and when the weapon gets fired.
    public Action<float> HealthChangePercentage;
    public Action<float, float> HealthChange;
    public Action Death;
    public static Action<GameCharacter> CharacterDeath;

    public Action<float> HeatChangePercentage;
    public Action<float, float> HeatChange;
    public Action<bool> Overheat;

    public Action<Weapon> WeaponFired;

    // Update our health and notify any listeners of the changes.
    private void UpdateHealthChange() {
        currentHealth = Mathf.Clamp(currentHealth, 0, maxHealth);

        if (HealthChange != null) {
            HealthChange(currentHealth, maxHealth);
        }

        if (HealthChangePercentage != null) {
            HealthChangePercentage(currentHealth / maxHealth);
        }

        // If we die, send out both a static delegate and an instance delegate.
        // The static delegate is for anything that needs to know when a character has died.
        // The instance delegate is for any components that are attached to the character.
        if (currentHealth == 0 && Death != null) {
            if (CharacterDeath != null) {
                CharacterDeath(this);
            }
            Death();
        }
    }

    // Update our heat, make any changes to our state that need to be made, and notify our listeners of those changes.
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
                overheatedAtTime = Time.time;
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

    //Gun and weapon settings
    public CharacterGun gun;
    [SerializeField]
    private Weapon startingWeapon;
    public Weapon StartingWeapon { get { return startingWeapon; } }
    [SerializeField]
    private Weapon activeWeapon = null;
    public Weapon ActiveWeapon { get { return activeWeapon; } }
    [SerializeField]
    private Weapon defaultWeapon = null;
    public Weapon DefaultWeapon { get { return defaultWeapon; } }
    [SerializeField]
    private List<Weapon> weaponList = new List<Weapon>();
    public Weapon[] Weapons { get { return weaponList.ToArray(); } }
    private GameObject weaponsGroupObject;

    public Weapon SetDefaultWeapon(Weapon weapon) {
        if (weapon != null) {
            if (weapon != defaultWeapon) {
                Weapon prevDefault = defaultWeapon;
                if (weapon.gameObject != weaponsGroupObject) {
                    defaultWeapon = weaponsGroupObject.AddCopyOfScript(weapon);
                    defaultWeapon.gameCharacter = this;
                    weaponList.Add(defaultWeapon);
                }

                if (prevDefault != null) {
                    weaponList.Remove(prevDefault);
                    Destroy(prevDefault);
                }
            }

            if (activeWeapon == null) {
                SetActiveWeapon(defaultWeapon);
            }
        } else if (defaultWeapon != null) {
            if (activeWeapon == defaultWeapon) {
                SetActiveWeapon(null);
            }
            weaponList.Remove(defaultWeapon);
            Destroy(defaultWeapon);
        }

        return defaultWeapon;
    }

    public Weapon AddWeapon(Weapon weapon) {
        Weapon wpn = FindWeaponWithID(weapon.weaponID);
        if (wpn == null) {
            Weapon copy = weaponsGroupObject.AddCopyOfScript(weapon);
            copy.gameCharacter = this;

            weaponList.Add(copy);

            return copy;
        } else {
            wpn.OnPickupCopy(weapon);
            return wpn;
        }
    }

    public void RemoveWeapon(Weapon weapon) {
        Weapon wpn = null;
        if (weapon.gameObject == weaponsGroupObject) {
            wpn = weapon;
        } else {
            wpn = FindWeaponWithID(weapon.weaponID);
        }

        if (wpn != null && wpn != defaultWeapon) {
            if (activeWeapon == wpn) {
                SetActiveWeapon(defaultWeapon);
            }

            weaponList.Remove(wpn);
            Destroy(wpn);
        }
    }

    public Weapon AddWeaponAndSetActive(Weapon weapon) {
        Weapon copy = AddWeapon(weapon);
        SetActiveWeapon(copy);
        return copy;
    }

    public Weapon FindWeaponWithID(string weaponID) {
        return weaponList.Find(wpn => wpn.weaponID == weaponID);
    }

    public void SetActiveWeapon(Weapon weapon) {
        Weapon wpn = null;
        if (weapon != null) {
            if (weapon.gameObject == weaponsGroupObject) {
                wpn = weapon;
            } else {
                wpn = FindWeaponWithID(weapon.weaponID);
            }   
        }

        foreach (Weapon w in weaponList) {
            w.enabled = w == wpn;
        }

        activeWeapon = wpn;
    }

    public void CycleWeaponPrev() {
        CycleWeapon(false);
    }

    public void CycleWeaponNext() {
        CycleWeapon(true);
    }

    private void CycleWeapon(bool next) {
        int index = weaponList.IndexOf(activeWeapon);
        index = (index + ((next) ? 1 : -1)) % weaponList.Count;
        SetActiveWeapon(weaponList[index]);
    }

    // Intialization logic
    void Awake() {
        weaponsGroupObject = new GameObject("Weapons");
        weaponsGroupObject.transform.parent = this.transform;
    }
        
    // Make sure we're all good to go!
    void Start() {
        UpdateHealthChange();
        UpdateHeatChange();
        SetDefaultWeapon(startingWeapon);
    }

    // Character physics!
    protected virtual void FixedUpdate() {
        if (motor != null) {
            UpdateMovement(Time.fixedDeltaTime);
        }
    }

    protected virtual void UpdateMovement(float fixedDeltaTime) {
        motor.Move(fixedDeltaTime);

        //Add sprinting heat cost
        if (IsSprinting) {
            CurrentHeat += sprintHeatCostPerSecond * fixedDeltaTime;
        }
    }

    // Update is called once per frame
    protected virtual void Update () {
        UpdateWeapon();
        UpdateHeat();
    }

    protected virtual void UpdateWeapon() {
        if (gun != null && activeWeapon != null && activeWeapon.isActiveAndEnabled) {
            float heatChange;
            bool weaponFired;
            //We can't shoot if we're overheated!
            bool firing = (Overheated) ? false : fireInput;
            activeWeapon.UpdateState(firing, gun.bulletSpawnPoints, out heatChange, out weaponFired);
            CurrentHeat += heatChange;

            if (weaponFired && WeaponFired != null) {
                // This delegate is only to be fired when the character actually shoots something, not for every frame the fire input is held down.
                WeaponFired(activeWeapon);
            }
        }
    }

    protected virtual void UpdateHeat() {
        // Update heat cooling
        // If we got overheated, then we need to wait before we can do cooling again.
        if (!overheated || (overheated && (Time.time >= overheatedAtTime + overheatWaitPeriod))) {
            CurrentHeat -= heatCooldownPerSecond * Time.deltaTime;
        }
    }
    
    void OnValidate() {

        speed = Mathf.Max(0, speed);
        sprintSpeed = Mathf.Max(0, sprintSpeed);
        sprintHeatCostPerSecond = Mathf.Max(0, sprintHeatCostPerSecond);

        if (Application.isPlaying) {
            // Code that happens during play.
            CurrentHealth = currentHealth;
            CurrentHeat = currentHeat;

            if (weaponList.Count > 0 && !weaponList.Contains(activeWeapon)) {
                activeWeapon = null;
            }

            if (weaponList.Count > 0 && !weaponList.Contains(defaultWeapon)) {
                defaultWeapon = null;
            }

        } else {
            // Code that happens when not in play.
            maxHealth = Mathf.Max(0, maxHealth);
            currentHealth = maxHealth;

            currentHeat = 0;
            maxHeat = Math.Max(0, maxHeat);

            activeWeapon = null;
            defaultWeapon = null;
            weaponList.Clear();
        }

        heatCooldownPerSecond = Mathf.Max(0, heatCooldownPerSecond);
        overheatWaitPeriod = Math.Max(0, overheatWaitPeriod);
        overheatWaitUntilPercentage = Mathf.Clamp01(overheatWaitUntilPercentage);
    }

    //Debug information that only gets compiled if we're running this script in the editor.
#if UNITY_EDITOR
    public bool showDebugInfo = false;

    void OnGUI() {
        if (showDebugInfo) {
            GUILayout.Label("Health: " + currentHealth + "/" + maxHealth);
            GUILayout.Label("Heat: " + currentHeat + "/" + maxHeat);
            GUILayout.Label("Overheated: " + overheated);
            GUILayout.Label("Active Weapon: " + activeWeapon.weaponName + ((activeWeapon.usesAmmo) ? " (" + activeWeapon.currentAmmo + "/" + activeWeapon.maxAmmo + ")" : ""));
            GUILayout.Label("Weapons");
            foreach (Weapon weapon in weaponList) {
                if (activeWeapon == weapon) {
                    GUILayout.Label("[" + weapon.weaponName + "]" + ((weapon.usesAmmo) ? " (" + weapon.currentAmmo + "/" + weapon.maxAmmo + ")" : ""));
                } else {
                    GUILayout.Label(weapon.weaponName + ((weapon.usesAmmo) ? " (" + weapon.currentAmmo + "/" + weapon.maxAmmo + ")" : ""));
                }
            }
        }
    }
#endif
}
