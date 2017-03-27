using UnityEngine;
using System.Collections;

public class MapManager : MonoBehaviour {

    public Transform allPlayersGroupTransform;
    public Transform[] playerSpawnPoints;
    public static MapManager instance;

    public GameObject playerCameraPrefab;
    public GameObject dinoHUDUIPrefab;
    public GameObject dinoWorldUIPrefab;

    public PlayerData[] players;

	// Use this for initialization
	void OnEnable () {
        instance = this;
	}

    void OnDisable() {
        instance = null;
    }

    void Start() {
        players = new PlayerData[PlayerManager.PlayerCount];
        for(int i = 1; i <= PlayerManager.PlayerCount; i++) {
            players[i - 1] = SpawnPlayer(i);
        }
        for (int i = 1; i <= PlayerManager.PlayerCount; i++) {
            for (int j = 1; j <= PlayerManager.PlayerCount; j++) {
                if (i != j) {
                    CreatePlayerWorldUI(i, j);
                }
            }
        }


    }

    private PlayerData SpawnPlayer(int playerNumber) {
        // First create the empty object that will contain all the player dino objects.
        GameObject playerGroupObject = new GameObject("Player " + playerNumber);
        Transform playerGroupTransform = playerGroupObject.transform;
        playerGroupTransform.parent = allPlayersGroupTransform;

        // Instantiate a Dino for the player based on what they have chosen through the PlayerManager

        // Fetch the spawn point's information.
        Vector3 spawnPosition = playerSpawnPoints[playerNumber - 1].position;
        Quaternion spawnRotation = playerSpawnPoints[playerNumber - 1].rotation;
        
        // Create the player's dino
        GameObject dinoObject = (GameObject)Instantiate(PlayerManager.PlayerDinos[playerNumber - 1], spawnPosition, spawnRotation, playerGroupTransform);
        Transform dinoTransform = dinoObject.transform;
        DinoCharacter dinoCharacter = dinoObject.GetComponent<DinoCharacter>();

        // Create the player's camera
        GameObject cameraObject = (GameObject)Instantiate(playerCameraPrefab, spawnPosition, spawnRotation, playerGroupTransform);
        Camera playerCamera = cameraObject.GetComponent<Camera>();
        PlayerDinoCamera dinoCamera = cameraObject.GetComponent<PlayerDinoCamera>();

        // Create the player's HUD UI
        GameObject hudUIObject = (GameObject)Instantiate(dinoHUDUIPrefab, playerGroupTransform);
        DinoUI dinoUI = hudUIObject.GetComponent<DinoUI>();

        // Creation of the World UI objects is handled later.

        // Add the player control component to the dino.
        PlayerControl playerControl = dinoObject.AddComponent<PlayerControl>();

        // Configure all the components.

        // Player Control
        playerControl.playerNumber = playerNumber;
        playerControl.playerCamera = dinoCamera;
        playerControl.dino = dinoCharacter;
        playerControl.inputConfig = PlayerManager.GetConfigForPlayer(playerNumber);

        // Camera
        playerCamera.cullingMask = PlayerManager.GetCameraLayerMaskForPlayer(playerNumber);
        playerCamera.rect = PlayerManager.GetCameraRectForPlayer(playerNumber);
        dinoCamera.playerControl = playerControl;
        dinoCamera.target = dinoTransform;

        // UI Script
        dinoUI.dino = dinoCharacter;
        dinoUI.playerCamera = playerCamera;
        dinoUI.playerNumber = playerNumber;

        // Enable everything here. Prefabs are disabled by default so they don't try to load things in before they're configured.
        dinoObject.SetActive(true);
        cameraObject.SetActive(true);
        hudUIObject.SetActive(true);

        // Add PlayerData component to the player group object.
        PlayerData data = playerGroupObject.AddComponent<PlayerData>();

        // Fill out the data
        data.playerNumber = playerNumber;

        data.dinoObject = dinoObject;
        data.dinoCharacter = dinoCharacter;
        data.playerControl = playerControl;

        data.cameraObject = cameraObject;
        data.playerCamera = playerCamera;
        data.dinoCamera = dinoCamera;

        data.hudUIObject = hudUIObject;
        data.dinoUI = dinoUI;

        // And return it
        return data;
    }

    private void CreatePlayerWorldUI(int playerNumber, int playerViewer) {
        PlayerData data = players[playerNumber - 1];

        PlayerData viewerdata = players[playerViewer - 1];

        // Create world UI object
        GameObject worldUIObject = (GameObject)Instantiate(dinoWorldUIPrefab, data.dinoObject.transform);
        WorldDinoUI worldDinoUI = worldUIObject.GetComponent<WorldDinoUI>();

        // Configure world UI object
        worldDinoUI.dino = data.dinoCharacter;
        worldDinoUI.playerCamera = viewerdata.playerCamera;
        worldDinoUI.playerNumber = viewerdata.playerNumber;

        // Enable the object
        worldUIObject.SetActive(true);

        // Add it to the player data.
        data.AddWorldUIData(worldUIObject, worldDinoUI);
    }
}
