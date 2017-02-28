using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeBullet : MonoBehaviour {

    public Transform owner;
    public float speed;

	// Use this for initialization
	void Start () {
        GetComponent<Rigidbody>().AddForce(transform.forward * speed, ForceMode.VelocityChange);
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void OnTriggerEnter(Collider other) {

        PrototypeDamageable damageable = other.GetComponentInParent<PrototypeDamageable>();
        if (damageable != null) {
            damageable.ChangeHealth(-10);
        }

        Destroy(this.gameObject);
    }
}
