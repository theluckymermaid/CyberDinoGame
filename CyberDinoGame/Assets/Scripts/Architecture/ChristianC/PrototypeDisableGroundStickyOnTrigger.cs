using UnityEngine;
using System.Collections;

public class PrototypeDisableGroundStickyOnTrigger : MonoBehaviour {

	void OnTriggerStay(Collider other) {
        RigidbodyCharacter rbChar = other.GetComponent<RigidbodyCharacter>();

        if (rbChar) {
            rbChar.TemporarilyDisableGroundStickyEffect();
        }
    }
}
