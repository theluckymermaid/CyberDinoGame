using UnityEngine;
using System.Collections;

public class SimpleOrbitCamera : MonoBehaviour {

    public Transform target;
    public float preferredDistance = 10f;

    public string lookHorizontalAxis = "Mouse X";
    public string lookVerticalAxis = "Mouse Y";

    public bool invertVerticalAxis = false;

    private float yAngle;

    private Transform tr;

	// Use this for initialization
	void Start () {
        tr = transform;
	}
	
	// Update is called once per frame
	void LateUpdate () {
        tr.LookAt(target);
	}
}
