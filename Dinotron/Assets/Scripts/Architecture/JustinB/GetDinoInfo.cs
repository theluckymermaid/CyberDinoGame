using UnityEngine;
using System.Collections;
using System.Collections.Generic;
public class GetDinoInfo : MonoBehaviour {

	//Creates 4 lists to hold the information of any dinosaur prefab added to the game object list "dinosaurs"
	//This helps to reduce memory usage because the getComponent method is very system taxing.
	public List<GameObject> numberOfDinosaurs = new List<GameObject>();
	private List<GameCharacter> dinoStatistics = new List<GameCharacter>();
	private List<SimpleWeapon> dinoWeapons = new List<SimpleWeapon>();
	private List<string> dinoNames = new List<string> ();

	//Key Codes for controlling the script
	[SerializeField]
	private KeyCode upKey;
	[SerializeField]
	private KeyCode downKey;
	[SerializeField]
	private KeyCode leftKey;
	[SerializeField]
	private KeyCode rightKey;

	//delegates that send out the information from the selected dinosaur
	public delegate void sendStrings (string dinoName);
	public delegate void sendStats (float stat);

	//events that send out a specific dinosaur stat
	public  event sendStrings sendName;
	public  event sendStats sendROF;
	public  event sendStats sendDamage;
	public  event sendStats sendHealth;
	public  event sendStats sendSpeed;
	public  event sendStats sendHeat;

	//the number of columns in the dinosaur selection screen. this value is used to calculate which dinosaur is selected when a controller input is entered
	[SerializeField]
	private int numberOfCols;
	//Current position in the dinosaur lists
	private int currentPosition = 0;

	//used to control the posititon of the highlight box on the selection screen
	public Vector3 highlightPosition;
	public GameObject highlightbox;
	public RectTransform highlightTranformer;
	void Start () {
		//Gets the script components for each dinosaur prefab in the list "dinosaurs" and stores them in the dinoStatistics list and 
		//dinoWeapons List. This cuts down the usage of Get component to one time at the start of the scene.
		for (int i = 0; i < numberOfDinosaurs.Count; i++) {
			//adds statistics to each list based on the number of dinosaur prefabs entered into the numberOfDinosaurs list
			dinoStatistics.Add(numberOfDinosaurs [i].GetComponent<GameCharacter> ());
			dinoWeapons.Add(numberOfDinosaurs [i].GetComponentInChildren<SimpleWeapon>());
			dinoNames.Add (numberOfDinosaurs [i].transform.name);
		}
		//attaches highlightTransformer to the RectTransform of the selected object (in this case the highlight box object)
		highlightTranformer = highlightbox.GetComponent<RectTransform> ();
		highlightPosition = highlightTranformer.position;
	}
	void Update(){
		Selection ();
	}

	public void Selection () //changes the currently selected dinosaur based on user input
	{
		if (Input.GetKeyDown (upKey) == true && currentPosition - numberOfCols >= 0) {
			currentPosition -= numberOfCols;
			statDelegates ();
			moveHighlightBox (upKey);

		} else if (Input.GetKeyDown (downKey) == true && currentPosition + numberOfCols < numberOfDinosaurs.Count) {
			currentPosition += numberOfCols;
			statDelegates ();
			moveHighlightBox (downKey);

		} else if (Input.GetKeyDown (leftKey) == true && currentPosition - 1 >= 0) {
			currentPosition -= 1;
			statDelegates ();
			moveHighlightBox (leftKey);

		} else if (Input.GetKeyDown (rightKey) == true && currentPosition + 1 < numberOfDinosaurs.Count) {
			currentPosition += 1;
			statDelegates ();
			moveHighlightBox (rightKey);
		}
	}
	public void statDelegates()//sends out delegate calls that contain the currently selected dinosaur's stats
	{
		if (sendHealth != null) {
			sendHealth (dinoStatistics [currentPosition].MaxHealth);
		}
		if (sendHeat != null) {
			sendHeat (dinoStatistics [currentPosition].MaxHeat);
		}
		if (sendSpeed != null) {
			sendSpeed (dinoStatistics [currentPosition].speed);
		}
		if (sendDamage != null) {
			sendDamage (dinoWeapons [currentPosition].damage);
		}
		if (sendROF != null) {
			sendROF (dinoWeapons [currentPosition].fireDelay);
		}
		if (sendName != null) {
			sendName (numberOfDinosaurs [currentPosition].transform.name);
		}
	}
	public void moveHighlightBox(KeyCode keyPressed) //controls the position of the highlighter box
	{
		Debug.Log ("Made it");
		if (keyPressed == upKey) {
			highlightPosition.Set (highlightPosition.x, highlightPosition.y + 150f, highlightPosition.z); //shift the position of the highlight box up one
			highlightTranformer.transform.position = highlightPosition;
		} else if (keyPressed == downKey) {
			highlightPosition.Set (highlightPosition.x, highlightPosition.y - 150f, highlightPosition.z); //shift the position of the highlight box down one
			highlightTranformer.transform.position = highlightPosition;
		} else if (keyPressed == leftKey) {
			if ((currentPosition) % numberOfCols == numberOfCols - 1 && currentPosition != numberOfDinosaurs.Count -1) { //if the previous position was the biginning of a new row
				highlightPosition.Set (highlightPosition.x + (175.5f* (numberOfCols -1)), highlightPosition.y + 150f, highlightPosition.z); //set position of the highlighter to the end of the previous row.
				highlightTranformer.transform.position = highlightPosition;
			} else {
				highlightPosition.Set (highlightPosition.x - 175.5f, highlightPosition.y, highlightPosition.z); //set postition of the highlighter one to the left
				highlightTranformer.transform.position = highlightPosition;
			}
		} else if (keyPressed == rightKey) {
			if ((currentPosition) % (numberOfCols) == 0 && currentPosition != 0) { //if the previous position was the end of a new row
				highlightPosition.Set (highlightPosition.x - (175.5f* (numberOfCols -1)), highlightPosition.y -  150f, highlightPosition.z); //set position of the highlighter to the beginning of the new row
				highlightTranformer.transform.position = highlightPosition;
				Debug.Log ("position1");
			} else {
				highlightPosition.Set (highlightPosition.x + 175.5f, highlightPosition.y, highlightPosition.z); //set position of the highlighter one to the right
				highlightTranformer.transform.position = highlightPosition;
				Debug.Log ("position2");
			}
		}
	}
}