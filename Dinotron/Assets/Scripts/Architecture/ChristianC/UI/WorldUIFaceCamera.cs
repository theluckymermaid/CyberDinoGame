using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class WorldUIFaceCamera : MonoBehaviour {

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
        if (Application.isPlaying) {
            if (tr != null)
                tr.localPosition = offset;
            cameraTransform = playerCamera.transform;
        } else {
            transform.localPosition = offset;
        }
    }
	
	// Update is called once per frame
	void LateUpdate () {
        tr.localPosition = offset;
        tr.rotation = cameraTransform.rotation;
	}
}
