using UnityEngine;
using System.Collections;

public class FrameRateSet : MonoBehaviour {

    public int frameRate = 90;

	void OnEnable () {
        //Set frame rate to target.
        QualitySettings.vSyncCount = 0;
        Application.targetFrameRate = frameRate;
	}
	
	void OnDisable () {
        //Restore frame rate to platform default.
        Application.targetFrameRate = -1;
	}
}
