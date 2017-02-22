using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeTurret : MonoBehaviour {

    public float aggroRange = 15f;
    public Transform turretPivot;
    public Transform target;
    public Transform bulletSpawnPoint;
    public GameObject bulletPrefab;
    public Transform dynamicObjectFolder;
    public float fireRate = 0.2f;
    private float lastFired;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        turretPivot.LookAt(target);

        if ((transform.position - target.position).magnitude <= aggroRange && Time.time - lastFired > fireRate) {
            PrototypeBullet bullet = (Instantiate(bulletPrefab, bulletSpawnPoint.position, bulletSpawnPoint.rotation, dynamicObjectFolder) as GameObject).GetComponent<PrototypeBullet>();
            bullet.owner = this.transform;
            lastFired = Time.time;
        }
	}
}
