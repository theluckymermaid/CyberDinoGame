using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Use this component for anything in the game that deals damage.
/// </summary>
[RequireComponent(typeof(Rigidbody))]
public class DamageDealer : MonoBehaviour {

    public List<Transform> excludedTransforms = new List<Transform>();
    public float damage;

    protected Transform tr;

    protected void Start() {
        tr = transform;
    }

    protected List<IHitbox> hitboxes;

    protected bool CanHit(Transform other) {
        bool canhit = true;

        foreach (Transform excludedTr in excludedTransforms) {
            canhit = !(tr == excludedTr || excludedTr.IsChildOf(tr));
        }

        return canhit;
    }

    protected void FixedUpdate() {

    }

    protected void OnTriggerEnter(Collider collider) {
        
    }

    protected void OnTriggerStay(Collider collider) {
        if (hitboxes == null) {
            hitboxes = new List<IHitbox>();
        }

        IHitbox hitbox = collider.GetComponent(typeof(IHitbox)) as IHitbox;
        if (hitbox != null && hitbox.CanBeHit()) {
            hitboxes.Add(hitbox);
        }
    }

    protected void OnCollisionEnter(Collision collision) {
        if (hitboxes == null) {
            hitboxes = new List<IHitbox>();
        }

        IHitbox hitbox = collision.collider.GetComponent(typeof(IHitbox)) as IHitbox;
        if (hitbox != null && hitbox.CanBeHit()) {
            hitboxes.Add(hitbox);
        }
    }

    protected IEnumerator ResolveDamage() {
        yield return new WaitForFixedUpdate();
    }
}
