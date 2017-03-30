using UnityEngine;
using System.Collections;

public class Click_Destroy : MonoBehaviour {

    private Rigidbody _rigidbody;
	// Use this for initialization
	void Start ()
    {
        _rigidbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void OnTriggerEnter()
    {
        _rigidbody.isKinematic = false;
    }
}
