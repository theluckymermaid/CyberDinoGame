using UnityEngine;
using System.Collections;

public class PrototypeDisableGroundStickyOnTrigger : MonoBehaviour {

	void OnTriggerStay(Collider other) {
        RigidbodyCharacterMotor rbChar = other.GetComponent<RigidbodyCharacterMotor>();

        if (rbChar) {
            rbChar.TemporarilyDisableGroundStickyEffect();
        }
    }
}
