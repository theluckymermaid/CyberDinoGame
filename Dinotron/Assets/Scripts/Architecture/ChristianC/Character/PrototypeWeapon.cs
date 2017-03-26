using UnityEngine;
using System.Collections;
using System;

public class PrototypeWeapon : MonoBehaviour
{
    public DinoCharacter dino;
    public Transform[] barrels;
    public Transform[] bulletSpawnPoints;
    private int bulletSpawnPointIndex = 0;
    public GameObject bulletPrefab;
    public float fireRate = 0.1f;
    private float lastFired = 0f;
    private Transform tr;
			
	public float heat = 10f;		

    void Start() 
	{
        tr = transform;
    }

    public bool Fire() 
	{
		if (Time.time - lastFired > fireRate) {
			bulletSpawnPointIndex = (bulletSpawnPointIndex + 1) % bulletSpawnPoints.Length;

			PrototypeBullet bullet = (Instantiate (bulletPrefab, bulletSpawnPoints [bulletSpawnPointIndex].position, bulletSpawnPoints [bulletSpawnPointIndex].rotation) as GameObject).GetComponent<PrototypeBullet> ();
			bullet.owner = this.transform;
			lastFired = Time.time;

            return true;
		}

        return false;
    }

    void Update() {
        // Aim at the aim point!
        tr.rotation = Quaternion.LookRotation(dino.aimPoint - tr.position, tr.parent.up);

        foreach (Transform trBarrel in barrels) {
            Quaternion barrelTarget = Quaternion.LookRotation(dino.aimPoint - trBarrel.position, tr.up);
            trBarrel.rotation = Quaternion.RotateTowards(trBarrel.rotation, barrelTarget, 180f * Time.deltaTime);
        }
    }
}
