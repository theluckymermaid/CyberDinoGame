using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeBullet : MonoBehaviour {

    public Transform owner;
    public float speed;

    public float maxDistance = 400f;

    private Vector3 startPosition;
    private Transform tr;

    // Use this for initialization
    void Start() {
        GetComponent<Rigidbody>().AddForce(transform.forward * speed, ForceMode.VelocityChange);
        tr = transform;
        startPosition = tr.position;
    }

    // Update is called once per frame
    void Update() {
        if (Vector3.Distance(tr.position, startPosition) > maxDistance) {
            Destroy(this.gameObject);
        }
    }

    void OnTriggerEnter(Collider other) {
        Transform trOther = other.transform;
        Debug.Log(other.gameObject.name);
        if (!other.isTrigger && !(owner == trOther || trOther.IsChildOf(owner) || owner.IsChildOf(trOther))) {
            Destroy(this.gameObject);
        }
    }
}