using UnityEngine;
using System.Collections;

[RequireComponent(typeof(DinoCharacter))]
public class DinoDeath : MonoBehaviour {

    private DinoCharacter dino;
    public GameObject explosionPrefab;

	// Use this for initialization
	void OnEnable () {
        dino = GetComponent<DinoCharacter>();
        dino.Death += IDied;
    }
	
	void OnDisable() {
        dino.Death -= IDied;
    }

    void IDied() {
        //Spawn Health Pack here!
        Instantiate(explosionPrefab, GetComponent<Collider>().bounds.center, Quaternion.identity);

        gameObject.SetActive(false);
    }
}
