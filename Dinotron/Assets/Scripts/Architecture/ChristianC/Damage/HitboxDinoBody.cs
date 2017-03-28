using UnityEngine;
using System.Collections;
using System;

public class HitboxDinoBody : MonoBehaviour, IHitbox {

    public DinoCharacter dino;
    public bool weakPoint;
    private Transform tr;
    private new Collider collider;

    public event Action<float> DamageTaken;

    public bool CanBeHit(DamageDealer damageDealer) {
        return true;
    }

    public int GetHitPriority() {
        return (weakPoint) ? 1 : 2;
    }

    public Vector3 GetPosition() {
        return collider.bounds.center;
    }

    public void TakeDamage(float damage) {
        float d = (weakPoint) ? damage * 2 : damage;
        dino.CurrentHealth -= d;
        if (DamageTaken != null) {
            DamageTaken(d);
        }
    }

    void Start () {
        tr = transform;
        collider = GetComponent<Collider>();
	}
}
