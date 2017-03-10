using UnityEngine;
using System.Collections;
using Architecture.Input;


[RequireComponent(typeof(RigidbodyCharacter))]
public class PlayerControl : MonoBehaviour {

    [Tooltip("The camera that the player is using. This script bases input based on the orientation of this camera.")]
    public Camera playerCamera;

    private RigidbodyCharacter character;
    public RigidbodyCharacter Character { get { return character; } }


	// Use this for initialization
	void Start () {
        character = GetComponent<RigidbodyCharacter>();
	}

    void OnEnable() {
        InputListener.Axis2DInput += InputListener_Axis2DInput;
        InputListener.ButtonInput += InputListener_ButtonInput;
    }

    void OnDisable() {
        InputListener.Axis2DInput -= InputListener_Axis2DInput;
        InputListener.ButtonInput -= InputListener_ButtonInput;
    }

    private void InputListener_Axis2DInput(Axis2D axis, float horizontal, float vertical) {
        if (axis == Axis2D.Move) {
            character.moveInput.x = horizontal;
            character.moveInput.z = vertical;

            character.moveInput *= character.moveInput.magnitude;
            character.moveInput *= 3;

            if (character.moveInput.magnitude > 1f) {
                character.moveInput.Normalize();
            }

            //Lastly, rotate the input to be rotated along with the object.
            Quaternion rotation = Quaternion.Euler(0, playerCamera.transform.rotation.eulerAngles.y, 0);
            character.moveInput = rotation * character.moveInput;
        }
    }

    private void InputListener_ButtonInput(Button button, ButtonState state) {
        if (button == Button.Jump && state == ButtonState.Pressed) {
            character.jumpInput = true;
        }

        if (button == Button.Fire) {
            if (state == ButtonState.Pressed) {
                character.fireInput = true;
            } else if (state == ButtonState.Released) {
                character.fireInput = false;
            }
        }
    }
}