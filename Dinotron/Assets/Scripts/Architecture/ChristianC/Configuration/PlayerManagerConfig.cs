using UnityEngine;
using System.Collections;

#if UNITY_EDITOR
using UnityEditor;
#endif

public class PlayerManagerConfig : ScriptableObject {

    public PlayerInputConfig[] inputConfigs;
    

#if UNITY_EDITOR
    [MenuItem("Dinotron/Create Asset/PlayerManagerConfig")]
    public static void CreatePlayerInputConfig() {
        PlayerManagerConfig config = ScriptableObject.CreateInstance<PlayerManagerConfig>();
        AssetDatabase.CreateAsset(config, "Assets/PlayerManagerConfig.asset");
        AssetDatabase.SaveAssets();

        EditorUtility.FocusProjectWindow();

        Selection.activeObject = config;
    }
#endif
}
