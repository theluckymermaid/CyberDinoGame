using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeSpin : MonoBehaviour {

    public float spinSpeed = 5f;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        transform.Rotate(Vector3.up, spinSpeed * Time.fixedDeltaTime);
	}
}
