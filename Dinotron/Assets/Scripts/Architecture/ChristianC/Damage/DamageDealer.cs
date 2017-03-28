using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;

/// <summary>
/// Use this component for anything in the game that deals damage.
/// Does not delete itself upon dealing damage.
/// </summary>
public class DamageDealer : MonoBehaviour {

    /// <summary>
    /// For bullets, set this to the player who fired the bullet.
    /// </summary>
    public GameObject damageSource;
    public List<Transform> excludedTransforms = new List<Transform>();
    public float damage;
    /// <summary>
    /// If two hitboxes are more than this far apart, than the closer one will be hit no matter the priority of the other one.
    /// The idea is that armor hitboxes will be very close to the hitbox of the pieces they are protecting.
    /// </summary>
    private const float distanceTolerance = 0.3f;

    public Action<float> DamageDealt;

    protected Transform tr;
    protected Vector3 lastPosition;

    protected void Start() {
        tr = transform;
        lastPosition = tr.position;
    }

    /// <summary>
    /// A list of everything this script hit during the last fixed update.
    /// </summary>
    protected List<IHitbox> hitboxes = new List<IHitbox>(10);
    protected Coroutine coroutineResolveDamage;

    public bool CanHit(Transform other) {
        bool canhit = false;

        foreach (Transform excludedTr in excludedTransforms) {
            canhit = !(other.IsChildOf(excludedTr) || other.IsChildOf(tr));
        }

        return canhit;
    }

    protected void FixedUpdate() {
        hitboxes.Clear();
        lastPosition = tr.position;
    }

    protected void OnTriggerEnter(Collider collider) {
        OnCollide(collider);
    }

    protected void OnTriggerStay(Collider collider) {
        OnCollide(collider);
    }

    protected void OnCollisionEnter(Collision collision) {
        OnCollide(collision.collider);
    }

    protected void OnCollisionStay(Collision collision) {
        OnCollide(collision.collider);
    }

    protected void OnCollide(Collider collider) {
        if (CanHit(collider.transform)) {
            IHitbox hitbox = collider.GetComponent(typeof(IHitbox)) as IHitbox;
            if (hitbox != null && !hitboxes.Contains(hitbox) && hitbox.CanBeHit(this)) {
                hitboxes.Add(hitbox);

                if (coroutineResolveDamage == null) {
                    coroutineResolveDamage = StartCoroutine(ResolveDamage());
                }
            }
        }
    }

    protected IEnumerator ResolveDamage() {
        yield return new WaitForFixedUpdate();

        IHitbox bestHitbox = null;
        
        //Find the closet hitbox
        foreach(IHitbox hitbox in hitboxes) {
            if (bestHitbox == null) {
                bestHitbox = hitbox;
            } else {
                float bestDistance = (bestHitbox.GetPosition() - lastPosition).sqrMagnitude;
                float newDistance = (hitbox.GetPosition() - lastPosition).sqrMagnitude;

                if (newDistance < bestDistance) {
                    bestHitbox = hitbox;
                }
            }
        }

        // Iterate again to see if there's any hitboxes within the distance tolerance range that have a lower priority.
        foreach(IHitbox hitbox in hitboxes) {
            if (hitboxes == bestHitbox) {
                continue;
            } else if (hitbox.GetHitPriority() < bestHitbox.GetHitPriority()) {
                float distance = (bestHitbox.GetPosition() - hitbox.GetPosition()).magnitude;
                if (distance <= distanceTolerance) {
                    bestHitbox = hitbox;
                }
            }
        }

        if (bestHitbox != null) {
            bestHitbox.TakeDamage(damage);
        }

        coroutineResolveDamage = null;
    }
}
