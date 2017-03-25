//using System.Collections;
//using System.Collections.Generic;
//using UnityEngine;

//public class VerticalLook : MonoBehaviour {

//    public float lookSpeed = 100f;
//    public float lowerLimit = 60f;
//    public float upperLimit = -60f;

//	// Use this for initialization
//	void Start () {
//        Cursor.lockState = CursorLockMode.Locked;
//	}

//    void OnEnable() {
//        InputListener.Axis2DInput += OnAxis2DInput;
//    }

//    void OnDisable() {
//        InputListener.Axis2DInput -= OnAxis2DInput;
//    }

//    void OnAxis2DInput(Axis2D axis2D, float horizontal, float vertical) {
//        if (axis2D == Axis2D.Look) {
//            Vector3 rot = transform.localRotation.eulerAngles;
//            rot.x += -vertical * lookSpeed * Time.deltaTime;
//            if (rot.x > 180) rot.x -= 360;
//            rot.x = Mathf.Clamp(rot.x, upperLimit, lowerLimit);
//            transform.localRotation = Quaternion.Euler(rot);
//        }
//    }
//}
