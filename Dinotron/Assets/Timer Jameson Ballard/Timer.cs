using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

    public float myTimer = 300;
    public Text timerText;

    // Use this for initialization
    void Start()
    {
        timerText = GetComponent<Text>();
    }

    // Update is called once per frame
    void Update()
    {
        myTimer -= Time.deltaTime;
        string minutes = Mathf.Floor((int)myTimer / 60).ToString();
        string seconds = Mathf.Floor(myTimer % 60).ToString("00");
        timerText.text = minutes + ":" + seconds;

        if(myTimer < 1)
        {
            myTimer = 1;
        }
    }

}
