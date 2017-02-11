using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeDino : MonoBehaviour {

    public CharacterController characterController;
    public float speed = 3f;
    public float lookSpeed = 3f;
    public float jumpPower = 5f;
    public float gravity = 9.8f;
    public float yMotion = 0f;

    public Transform bulletSpawnPoint;
    public GameObject bulletPrefab;
    public Transform dynamicObjectsTransform;
    public float fireRate = 0.1f;
    private float lastFired = 0f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        float rotateHorizontal = MappedInput.allDevices.GetAxis(MappedAxis.LookHorizontal);
        rotateHorizontal *= lookSpeed * Time.deltaTime;
        transform.Rotate(Vector3.up * rotateHorizontal);
            

        Vector2 input = MappedInput.allDevices.GetAxis2DCircleClamp(MappedAxis.MoveHorizontal, MappedAxis.MoveVertical);
        Vector3 movement = new Vector3();
        movement.x = input.x;
        movement.z = input.y;
        movement = transform.TransformDirection(movement);
        movement *= speed;

        if (MappedInput.activeDevice.GetButton(MappedButton.Jump) && characterController.isGrounded) {
            yMotion = jumpPower;
        }

        yMotion -= gravity * Time.deltaTime;
        yMotion = Mathf.Max(yMotion, -gravity);

        movement.y = yMotion;

        movement *= Time.deltaTime;
        characterController.Move(movement);

        if (MappedInput.allDevices.GetAxisButton(MappedAxis.FirePrimary, AxisDirection.Positive)) {
            if (Time.time - lastFired > fireRate) {
                PrototypeBullet bullet = Instantiate(bulletPrefab, bulletSpawnPoint.position, bulletSpawnPoint.rotation, dynamicObjectsTransform).GetComponent<PrototypeBullet>();
                bullet.owner = this.transform;
                lastFired = Time.time;
            }
        }
	}
}
