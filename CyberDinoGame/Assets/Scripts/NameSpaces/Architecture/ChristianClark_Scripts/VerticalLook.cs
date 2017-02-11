using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VerticalLook : MonoBehaviour {

    public float lookSpeed = 100f;
    public float lowerLimit = 60f;
    public float upperLimit = -60f;

	// Use this for initialization
	void Start () {
        Cursor.lockState = CursorLockMode.Locked;
	}
	
	// Update is called once per frame
	void Update () {
        Vector3 rot = transform.localRotation.eulerAngles;
        rot.x += -MappedInput.allDevices.GetAxis(MappedAxis.LookVertical) * lookSpeed * Time.deltaTime;
        if (rot.x > 180) rot.x -= 360;
        rot.x = Mathf.Clamp(rot.x, upperLimit, lowerLimit);
        transform.localRotation = Quaternion.Euler(rot);

    }
}
