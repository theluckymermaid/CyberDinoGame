using UnityEngine;
using System;
using System.Collections;

public class TestDelegate : MonoBehaviour {

    public Action Fire1Action;
	
	// Update is called once per frame
	void Update () {
	    if (Fire1Action != null && Input.GetButtonDown("Fire1")) {
            Fire1Action();
        }
	}
}
