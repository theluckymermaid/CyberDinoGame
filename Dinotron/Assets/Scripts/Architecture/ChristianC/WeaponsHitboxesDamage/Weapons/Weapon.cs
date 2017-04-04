using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

//This is an abstract class so that any type of weapon can be devired from it.
//If you need a simple automatic fire weapon, SimpleWeapon is what you're looking for.
public abstract class Weapon : MonoBehaviour {
    public GameCharacter gameCharacter;
    public GameObject projectilePrefab;
    public float damage;

    public abstract void UpdateState(bool fireInput, Transform[] projectileSpawnPoints, out float heatChange, out bool weaponFired);
}

