using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using System.Reflection;

/// <summary>
/// Contains an extension method that lets script Components (anything that dervives from MonoBehaviour) to be copies to another GameObject.
/// Is not guaranteed to work on particularly complex scripts.
/// </summary>
public static class ScriptCopy {
    public static T AddCopyOfScript<T>(this GameObject gameObject, T script) where T : MonoBehaviour {
        if (script != null) {
            return script.AddCopyOfSelf(gameObject);
        } else {
            return null;
        }
    }

    public static T AddCopyOfSelf<T>(this T comp, GameObject gameObject) where T : MonoBehaviour {
        Type type = comp.GetType();
        T copy = gameObject.AddComponent(type) as T;

        // Iterate twice, first filling out all the fields then the properties because filling out the properites may have secondary effects
        // that depend on all the fields being filled out.

        // Get all the fields and properties that have been declared only in that subtype.
        BindingFlags bindingFlags = BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.DeclaredOnly;

        //Work our way up the heiarchy until we hit MonoBehaviour, then stop.
        while (type != typeof(MonoBehaviour)) {
            FieldInfo[] fieldInfos = type.GetFields(bindingFlags);
            foreach (FieldInfo fieldInfo in fieldInfos) {
                fieldInfo.SetValue(copy, fieldInfo.GetValue(comp));
            }
            type = type.BaseType;
        }

        // Iterate through the properties of each type.
        type = comp.GetType();
        while (type != typeof(MonoBehaviour)) {
            PropertyInfo[] propInfos = type.GetProperties(bindingFlags);
            foreach (PropertyInfo propInfo in propInfos) {
                if (propInfo.CanWrite) {
                    try {
                        propInfo.SetValue(copy, propInfo.GetValue(comp, null), null);
                    } catch (Exception e) {
                        Debug.LogWarning("Exception happened when copying Type [" + type.Name + "] Property [" + propInfo.Name + "]" 
                            + "\n[" + e.GetType().Name + "]: " + e.Message 
                            + "\n That property has not been copied correctly and may cause strange behaviour!");
                    }
                }
            }
            type = type.BaseType;
        }

        return copy;
    }
}
