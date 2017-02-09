using UnityEngine;
using System;

public class ScriptExample : MonoBehaviour {

	public static Action<int> ActionDelegate; //Action Example 
	
	public int myInt = 8;

	//In MonoBehaviour class constructors are not allowed, use Start.

	// Use this for initialization
	void Start () {
		//Add a function to the Action:
		ScriptExample.ActionDelegate += FunctionCall;//use this in other scripts too!
		//Call the Action:
		if(ActionDelegate != null){
			ActionDelegate(myInt);
		}
	}



    private void FunctionCall(int obj)
    {
        print(obj);
    }

    // AVOID Update!!! use IEnumorators instead.
    // void Update () {

    // }
}
