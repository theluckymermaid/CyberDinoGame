using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Architecture.Input;


public class PrototypeDino : MonoBehaviour {

    public Animator animator;

    public CharacterController characterController;
    public float walkingSpeed = 3f;
    public float sprintingSpeed = 6f;
    public float lookSpeed = 3f;
    public float jumpPower = 5f;
    public float gravity = 9.8f;

    private bool sprinting = false;

    //public Transform bulletSpawnPoint;
    //public GameObject bulletPrefab;
    //public Transform dynamicObjectsTransform;
    //public float fireRate = 0.1f;
    //private float lastFired = 0f;

    private Vector2 moveInput = new Vector2();
    private Vector3 velocity = new Vector3();
    private Vector3 slideVelocity = new Vector3();

    public float minSlideAngle = 45f;
    public float maxSlideAngle = 80f;
    public float slideSpeed = 3f;
    public AnimationCurve slideSpeedCurve = new AnimationCurve(new Keyframe(0, 0.5f), new Keyframe(1, 1));

    public Vector3 flattestFloorHitNormal;
    public float flattestFloorHitAngle;

	void OnEnable() {
        InputListener.ButtonInput += OnButtonInput;
        InputListener.Axis2DInput += OnAxis2DInput;
    }

    void OnDisable() {
        InputListener.ButtonInput -= OnButtonInput;
        InputListener.Axis2DInput -= OnAxis2DInput;
    }

    void OnButtonInput(Button button, ButtonState buttonState) {
        switch (button) {
            case Button.Jump:
                if (buttonState == ButtonState.Pressed && characterController.isGrounded) {
                    velocity.y = jumpPower;
                    slideVelocity.y = 0;
                }
                break;
            case Button.Sprint:
                if (buttonState == ButtonState.Pressed)
                    sprinting = true;
                else if (buttonState == ButtonState.Released)
                    sprinting = false;

                break;
            //case Button.ButtonFire:
            //    if (buttonState == ButtonState.Held && (Time.time - lastFired > fireRate)) {
            //        PrototypeBullet bullet = (Instantiate(bulletPrefab, bulletSpawnPoint.position, bulletSpawnPoint.rotation, dynamicObjectsTransform) as GameObject).GetComponent<PrototypeBullet>();
            //        bullet.owner = this.transform;
            //        lastFired = Time.time;
            //    }
            //    break;
        }
    }

    void OnAxis2DInput(Axis2D axis2D, float horizontal, float vertical) {
        switch (axis2D) {
            case Axis2D.Move:
                moveInput.x = horizontal;
                moveInput.y = vertical;
                moveInput.Normalize();
                break;
            case Axis2D.Look:
                horizontal *= lookSpeed * Time.deltaTime;
                transform.Rotate(Vector3.up * horizontal);
                break;
        }
    }
	
	// Update is called once per frame
	void Update () {
        float speed = (sprinting) ? sprintingSpeed : walkingSpeed;

        velocity.x = moveInput.x * speed;
        velocity.z = moveInput.y * speed;
        velocity = transform.TransformDirection(velocity);
        if (characterController.isGrounded && velocity.y < 0) {
            velocity.y = 0;
        }

        float velocitySpeed = Mathf.Sqrt((velocity.x * velocity.x) + (velocity.z * velocity.z));
        if (velocitySpeed == 0) {
            animator.SetBool("IsWalking", false);
            animator.SetBool("IsRunning", false);
        } else if (!sprinting) {
            animator.SetBool("IsWalking", true);
            animator.SetBool("IsRunning", false);
        } else {
            animator.SetBool("IsWalking", false);
            animator.SetBool("IsRunning", true);
        }

        velocity.y -= gravity * Time.deltaTime;
        velocity.y = Mathf.Max(velocity.y, -gravity);

        flattestFloorHitAngle = 100f;

        characterController.Move((velocity + slideVelocity) * Time.deltaTime);

        

        float _slidingSpeed;
        if ((flattestFloorHitAngle > minSlideAngle && flattestFloorHitAngle < 90) || Mathf.Approximately(flattestFloorHitAngle, minSlideAngle) && characterController.isGrounded) {

            //Get a value for how far inbetween min and maxSlideAngle the hit angle is.
            float factor = Mathf.Max(0, flattestFloorHitAngle - minSlideAngle) / (maxSlideAngle - minSlideAngle);
            _slidingSpeed = slideSpeedCurve.Evaluate(factor) * slideSpeed;

            slideVelocity = Vector3.Cross(Vector3.Cross(Vector3.up, flattestFloorHitNormal), flattestFloorHitNormal);
            slideVelocity *= _slidingSpeed;
            
        }
    }

    void OnControllerColliderHit(ControllerColliderHit hit) {

        if (isActiveAndEnabled) {
            if ((characterController.collisionFlags & CollisionFlags.Below) != 0) {
                float angle = Vector3.Angle(hit.normal, Vector3.up);
                slideVelocity = Vector3.zero;

                //if (angle <= 10) {
                //    Debug.Log("Angle less than 10!" + Time.time);
                //}

                if (angle < flattestFloorHitAngle) {
                    flattestFloorHitAngle = angle;
                    flattestFloorHitNormal = hit.normal;
                }
            }
        }
    }
}
