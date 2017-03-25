using UnityEngine;
using System.Collections;
using System;

public class PrototypeWeapon : MonoBehaviour
{
    public Transform[] barrels;
    public Transform[] bulletSpawnPoints;
    private int bulletSpawnPointIndex = 0;
    public GameObject bulletPrefab;
    public float fireRate = 0.1f;
    private float lastFired = 0f;

    public Transform transformToRotationMatch;
    public float pitchMatchOffset = -15f;

    private Transform tr;

	[Range (0, 0.2f)] 				//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	public float heat = .01f;		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	bool overheated = false;		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

	public Action<float> OnHeatChange;	//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	public HeatBar heatBar;			//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    void Start() 
	{
        tr = transform;
		heatBar.overheat += SetOverheated; //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

    }

    public void Fire() 
	{
		if (!overheated) 			//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		{
			if (Time.time - lastFired > fireRate) {
				bulletSpawnPointIndex = (bulletSpawnPointIndex + 1) % bulletSpawnPoints.Length;

				PrototypeBullet bullet = (Instantiate (bulletPrefab, bulletSpawnPoints [bulletSpawnPointIndex].position, bulletSpawnPoints [bulletSpawnPointIndex].rotation) as GameObject).GetComponent<PrototypeBullet> ();
				bullet.owner = this.transform;
				lastFired = Time.time;

				OnHeatChange (heat);	//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			}
		} 							//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    }

    void Update() {
        // Pitch the weapon correctly.
        Vector3 euler = tr.eulerAngles;
        euler.x = transformToRotationMatch.rotation.eulerAngles.x;
        euler.y = transformToRotationMatch.rotation.eulerAngles.y;
        tr.eulerAngles = euler;

        bool somethingToAimAt = false;
        float aimPointDistance = float.PositiveInfinity;
        Vector3 aimPoint = Vector3.zero;
        foreach (RaycastHit hit in Physics.RaycastAll(transformToRotationMatch.position, transformToRotationMatch.forward)) {
            Transform trHit = hit.transform;
            if (!hit.collider.isTrigger && !tr.IsChildOf(trHit) && hit.distance < aimPointDistance) 
			{
                aimPointDistance = hit.distance;
                aimPoint = hit.point;
                somethingToAimAt = true;
            }
        }

        foreach (Transform trBarrel in barrels) {
            Quaternion target = tr.rotation;
            if (somethingToAimAt) {
                target = Quaternion.LookRotation(aimPoint - trBarrel.position);
            } 

            trBarrel.rotation = Quaternion.RotateTowards(trBarrel.rotation, target, 180f * Time.deltaTime);
        }
    }

	void SetOverheated(bool _b)		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	{								//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<					
		overheated = _b;			//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	}								//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
}
