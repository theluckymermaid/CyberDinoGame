using UnityEngine;
using System.Collections;

public class Collide_Destroy : MonoBehaviour {

    bool shattered = false;
    public GameObject ShatterVersion;

    void OnTriggerEnter()
    {
        if (!shattered) {
            ItemSpawn();
            Destroy(gameObject);
            shattered = true;
        }
    }
    public void ItemSpawn()
    {
        Instantiate(ShatterVersion, transform.position, transform.rotation);
    }
}
