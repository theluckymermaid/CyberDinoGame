using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class WorldUIBar : MonoBehaviour {

    public Camera playerCamera;
    private Transform cameraTransform;
    private Transform tr;

    public Vector3 offset = new Vector3(0, 2, 0);

	// Use this for initialization
	void Start () {
        cameraTransform = playerCamera.transform;
        tr = transform;
	}

    void OnValidate() {
        tr.localPosition = offset;
        if (Application.isPlaying) {
            cameraTransform = playerCamera.transform;
        }
    }
	
	// Update is called once per frame
	void LateUpdate () {
        tr.localPosition = offset;
        tr.eulerAngles = cameraTransform.eulerAngles;
	}
}
