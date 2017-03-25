using UnityEngine;
using System.Collections;

public class Test : MonoBehaviour {

    public TestDelegate testDelegate;

    Transform tr;
    // Use this for initialization
    void Start() {
        tr = transform;
        if (testDelegate != null) {
            testDelegate.Fire1Action += Move;
        }
    }
	
	void OnDestroy () {
        if (testDelegate != null) {
            testDelegate.Fire1Action -= Move;
        }
	}

    void Move() {
        tr.Translate(0.1f, 0, 0);
        Debug.Log("MOVE!");
    }
}
