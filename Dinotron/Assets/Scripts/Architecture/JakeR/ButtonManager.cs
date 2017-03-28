using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;
using System;
//Jake Ressler
public class ButtonManager : MonoBehaviour
{

    void Start() {
        Cursor.lockState = CursorLockMode.None;
    }

    public void Player1Btn(string players)
    {
		PlayerManager.PlayerCount = 1;
        SceneManager.LoadScene(players);
    }

    public void Player2Btn(string players)
    {
		PlayerManager.PlayerCount = 2;
        SceneManager.LoadScene(players);
    }

    public void Player3Btn(string players)
    {
		PlayerManager.PlayerCount = 3;
        SceneManager.LoadScene(players);
    }

    public void Player4Btn(string players)
    {
		PlayerManager.PlayerCount = 4;
        SceneManager.LoadScene(players);
    }
		
}
