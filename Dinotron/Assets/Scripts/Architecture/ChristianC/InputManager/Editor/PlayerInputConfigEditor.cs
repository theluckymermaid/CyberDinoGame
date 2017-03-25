using UnityEngine;
using UnityEditor;
using System.Collections;

public class PlayerInputConfigEditor {

    [MenuItem("Dinotron/Create Asset/PlayerInputConfig")]
	public static void CreatePlayerInputConfig () {
        PlayerInputConfig config = ScriptableObject.CreateInstance<PlayerInputConfig>();
        AssetDatabase.CreateAsset(config, "Assets/NewPlayerInputConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
}
