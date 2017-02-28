using UnityEngine;
using System.Collections;

[AddComponentMenu("Camera-Control/Mouse Orbit with zoom")]
public class MouseOrbitImproved : MonoBehaviour {

    public Transform target;

    public float yAngle;

    public float distance = 5.0f;
    private float hitDistance;
    public float xSpeed = 60.0f;
    public float ySpeed = 60.0f;

    public float yMinLimit = -20f;
    public float yMaxLimit = 80f;

    public float distanceMin = 1f;
    public float distanceMax = 10f;

    float x = 0.0f;
    float y = 0.0f;

    // Use this for initialization
    void Start() {
        Vector3 angles = transform.eulerAngles;
        x = angles.y;
        y = angles.x;

        // Make the rigid body not change rotation
        if (GetComponent<Rigidbody>())
            GetComponent<Rigidbody>().freezeRotation = true;
    }

    void LateUpdate() {
        if (target) {
            x += Input.GetAxis("LookHorizontal") * xSpeed * 0.02f;
            y -= Input.GetAxis("LookVertical") * ySpeed * 0.02f;

            y = ClampAngle(y, yMinLimit, yMaxLimit);

            Quaternion rotation = Quaternion.Euler(y, x, 0);

            distance = Mathf.Clamp(distance - Input.GetAxis("LookZoom"), distanceMin, distanceMax);
            hitDistance = float.PositiveInfinity;

            RaycastHit hit;
            if (Physics.Raycast(target.position, -transform.forward, out hit)) {
                hitDistance = hit.distance;
            }
            Vector3 negDistance = new Vector3(0.0f, 0.0f, -Mathf.Min(distance, hitDistance));
            Vector3 position = rotation * negDistance + target.position;

            transform.rotation = rotation;
            transform.position = position;

            var rot = Quaternion.LookRotation(target.position - transform.position);
            yAngle = rot.eulerAngles.y;
        }



    }

    public static float ClampAngle(float angle, float min, float max) {
        if (angle < -360F)
            angle += 360F;
        if (angle > 360F)
            angle -= 360F;
        return Mathf.Clamp(angle, min, max);
    }


}