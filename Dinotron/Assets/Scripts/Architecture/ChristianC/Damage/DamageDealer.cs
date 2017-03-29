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
    private const float distanceTolerance = 0.1f;

    public Action<float> DamageDealt;

    protected Transform tr;
    protected Vector3 lastPosition;

    protected void Start() {
        tr = transform;
        lastPosition = tr.position;
    }


    protected class HitboxEntry {
        public readonly IHitbox hitbox;
        public readonly Vector3 collisionPoint;
        public readonly float distance;

        public HitboxEntry(IHitbox hitbox, Vector3 collisionPoint, float distance) {
            this.hitbox = hitbox;
            this.collisionPoint = collisionPoint;
            this.distance = distance;
        }
    }

    /// <summary>
    /// A list of everything this script hit during the last fixed update.
    /// </summary>
    protected List<HitboxEntry> hitboxes = new List<HitboxEntry>(10);
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
        OnCollide(collision.collider, collision.contacts[0].point);
    }

    protected void OnCollisionStay(Collision collision) {
        OnCollide(collision.collider, collision.contacts[0].point);
    }

    protected void OnCollide(Collider collider) {
        OnCollide(collider, Vector3.zero);
    }

    protected void OnCollide(Collider collider, Vector3 collisionPoint) {
        IHitbox hitbox = collider.GetComponent(typeof(IHitbox)) as IHitbox;
        if (hitbox != null && !hitboxes.Exists(entry => entry.hitbox == hitbox) && hitbox.CanBeHit(this) && CanHit(collider.transform)) {
            Vector3 direction = tr.position - lastPosition;
            Ray ray = new Ray(lastPosition, direction);
            RaycastHit hit;
            if (collider.Raycast(ray, out hit, (tr.position - lastPosition).magnitude * 2)) {
                hitboxes.Add(new HitboxEntry(hitbox, hit.point, hit.distance));
            } else {
                Vector3 point = (collisionPoint != Vector3.zero) ? collisionPoint : collider.ClosestPointOnBounds(tr.position);
                hitboxes.Add(new HitboxEntry(hitbox, point, (point - lastPosition).magnitude));
            }
            
            if (coroutineResolveDamage == null) {
                coroutineResolveDamage = StartCoroutine(ResolveDamage());
            }
        }
    }

    protected IEnumerator ResolveDamage() {
        yield return new WaitForFixedUpdate();

        HitboxEntry bestEntry = null;
        
        //Find the closet hitbox
        foreach(HitboxEntry entry in hitboxes) {
            if (bestEntry == null) {
                bestEntry = entry;
            } else {
                if (entry.distance < bestEntry.distance) {
                    bestEntry = entry;
                }
            }
        }

        // Iterate again to see if there's any hitboxes within the distance tolerance range that have a lower priority.
        foreach(HitboxEntry entry in hitboxes) {
            if (entry == bestEntry) {
                continue;
            } else if (entry.hitbox.GetHitPriority() < bestEntry.hitbox.GetHitPriority()) {
                float distance = (bestEntry.collisionPoint - entry.collisionPoint).magnitude;
                if (distance <= distanceTolerance) {
                    bestEntry = entry;
                }
            }
        }

        if (bestEntry != null) {
            bestEntry.hitbox.TakeDamage(damage);
        }

        coroutineResolveDamage = null;
    }
}
