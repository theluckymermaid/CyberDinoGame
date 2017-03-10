using UnityEngine;
using System.Collections;
using Architecture.Input;

[RequireComponent(typeof(RigidbodyCharacter))]
public class ConfigurablePlayerControl : MonoBehaviour {

    [Tooltip("The camera that the player is using. This script bases input based on the orientation of this camera.")]
    public Camera playerCamera;

    private RigidbodyCharacter character;
    public RigidbodyCharacter Character { get { return character; } }

    [Tooltip("What axis to listen to for horizontal move input.")]
    public string moveHorizontalAxis = "Horizontal";
    [Tooltip("What axis to lisen to for vertical move input.")]
    public string moveVerticalAxis = "Vertical";

    [Tooltip("What button to listen to for jump button input.")]
    public string jumpButton = "Jump";
    private bool wasJumpHeld = false;

    [Tooltip("What button to listen to for fire button input.")]
    public string fireButton = "Fire1";

	// Use this for initialization
	void Start () {
        character = GetComponent<RigidbodyCharacter>();
	}

    void Update() {
        character.moveInput.x = Input.GetAxis(moveHorizontalAxis);
        character.moveInput.z = Input.GetAxis(moveVerticalAxis);

        character.moveInput *= character.moveInput.magnitude;
        character.moveInput *= 3;

        if (character.moveInput.magnitude > 1f) {
            character.moveInput.Normalize();
        }

        //Lastly, rotate the input to be rotated along with the object.
        Quaternion rotation = Quaternion.Euler(0, playerCamera.transform.rotation.eulerAngles.y, 0);
        character.moveInput = rotation * character.moveInput;


        //Detect the rising edge case ourselves, going above 60 FPS is causing errors in reading the jump input for some reason.
        if (Input.GetButton(jumpButton) && !wasJumpHeld) {
            character.jumpInput = true;
        }
        wasJumpHeld = Input.GetButton(jumpButton);

        character.fireInput = Input.GetButton(fireButton);
    }
}
