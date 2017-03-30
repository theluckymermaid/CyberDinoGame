using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrototypeMovingPlatform : MonoBehaviour {

    public Vector3 relativeTargetPosition = Vector3.zero;
    public float moveTime = 5f;

    private Vector3 startingPosition;
    private Rigidbody _rigidbody;

	// Use this for initialization
	void Start () {
        startingPosition = transform.localPosition;
        _rigidbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void FixedUpdate () {
        float t = Time.time % (moveTime * 2f);
        if (t <= moveTime) {
            t /= moveTime;
        } else {
            t = 1 - ((t - moveTime) / moveTime);
        }

        Vector3 position = Vector3.Lerp(startingPosition, startingPosition + relativeTargetPosition, t);

        if (_rigidbody != null) {
            _rigidbody.MovePosition(position);
        } else {
            transform.localPosition = position;
        }
	}
}
