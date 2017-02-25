using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace Architecture.Input{
    public class InputListener : MonoBehaviour {

        public delegate void ButtonInputDelegate(Button button, ButtonState state);
        public delegate void Axis2DInputDelegate(Axis2D axis, float horizontal, float vertical);

        private ButtonInputDelegate buttonInput;
        private Axis2DInputDelegate axis2DInput;
        public static InputListener _instance;

        /// <summary>
        /// When this is true (the application is quitting), all static calls will do nothing.
        /// This is because GameObjects are deleted in random order and an OnDisable() call elsewhere often will reference one of the static functions after the _instance is deleted.
        /// What would do is recreate the instance when the deletion of all GameObjects is already on going, causing an error.
        /// </summary>
        private static bool isApplicationQuitting = false;

        public static InputListener Instance
        {
            get
            {
                if (isApplicationQuitting)
                    return null;

                if (_instance == null) {
                    //First see if there's an instance in the scene we an use
                    _instance = FindObjectOfType<InputListener>();

                    //If there's not, then we make our own instance.
                    if (_instance == null) {
                        GameObject gameObject = new GameObject("Input Listener");
                        _instance = gameObject.AddComponent<InputListener>();
                    }

                    //Make sure it persists across scenes.
                    DontDestroyOnLoad(_instance);
                }
                return _instance;
            }
        }

        public static event ButtonInputDelegate ButtonInput
        {
            add {
                if (!isApplicationQuitting)
                    Instance.buttonInput += value;
            }
            remove {
                if (!isApplicationQuitting)
                    Instance.buttonInput -= value;
            }
        }

        public static event Axis2DInputDelegate Axis2DInput
        {
            add {
                if (!isApplicationQuitting)
                    Instance.axis2DInput += value;
            }
            remove {
                if (!isApplicationQuitting)
                    Instance.axis2DInput -= value;
            }
        }

        void Update() {
            if (buttonInput != null)
                foreach (var button in Enum.GetValues(typeof(Button))) {
                    if (UnityEngine.Input.GetButtonDown(Enum.GetName(typeof(Button), button)))
                        buttonInput((Button)button, ButtonState.Pressed);
                    if (UnityEngine.Input.GetButtonUp(Enum.GetName(typeof(Button), button)))
                        buttonInput((Button)button, ButtonState.Released);
                    if (UnityEngine.Input.GetButton(Enum.GetName(typeof(Button), button)))
                        buttonInput((Button)button, ButtonState.Held);
                }

            if (axis2DInput != null)
                foreach (var axis2D in Enum.GetValues(typeof(Axis2D))) {
                    float horizontal, vertical;
                    horizontal = UnityEngine.Input.GetAxis(Enum.GetName(typeof(Axis2D), axis2D) + "Horizontal");
                    vertical = UnityEngine.Input.GetAxis(Enum.GetName(typeof(Axis2D), axis2D) + "Vertical");
                    axis2DInput((Axis2D)axis2D, horizontal, vertical);
                }
        }

        void OnApplicationQuit() {
            isApplicationQuitting = true;
        }
    }
}
