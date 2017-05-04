using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using System.Reflection;

/// <summary>
/// Contains an extension method that lets script Components (anything that dervives from MonoBehaviour) to be copies to another GameObject.
/// Is not guaranteed to work on particularly complex scripts. <para></para>
/// Use: "gameObject.AddCopyOfScript(scriptToCopy);" and "scriptComponent.CopyDataFrom(otherScriptComponent);"
/// </summary>
public static class ScriptCopy {
    /// <summary>
    /// Creates a copy of a script component that is found on another game object. Unity does not support this (at runtime) by default and it may not work right with very complex scripts.<para></para>
    /// Does nothing and returns null if the script passed in was null.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="gameObject"></param>
    /// <param name="script"></param>
    /// <returns></returns>
    public static T AddCopyOfScript<T>(this GameObject gameObject, T script) where T : MonoBehaviour {
        if (script != null) {
            T copy = gameObject.AddComponent(script.GetType()) as T;

            copy.CopyDataFrom(script);

            return copy;
        } else {
            return null;
        }
    }

    /// <summary>
    /// Copies all the data from another script component of the same type into this component.
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <param name="script"></param>
    /// <param name="other"></param>
    public static void CopyDataFrom<T>(this T script, T other) where T : MonoBehaviour {
        // Iterate twice, first filling out all the fields then the properties because filling out the properites may have secondary effects
        // that depend on all the fields being filled out.

        // Get all the fields and properties that have been declared only in that subtype.
        BindingFlags bindingFlags = BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.DeclaredOnly;

        Type type = script.GetType();

        if (type != other.GetType()) {
            Debug.LogError("Type mismatch between the two scripts in CopyDataFrom, this operation is not supported between two scripts with a different type!"
                + "\n Thus, nothing has happened. Double check your scripts.");
            return;
        }

        //Work our way up the heiarchy until we hit MonoBehaviour, then stop.
        while (type != typeof(MonoBehaviour)) {
            FieldInfo[] fieldInfos = type.GetFields(bindingFlags);
            foreach (FieldInfo fieldInfo in fieldInfos) {
                fieldInfo.SetValue(script, fieldInfo.GetValue(other));
            }
            type = type.BaseType;
        }

        // Iterate through the properties of each type.
        type = script.GetType();
        while (type != typeof(MonoBehaviour)) {
            PropertyInfo[] propInfos = type.GetProperties(bindingFlags);
            foreach (PropertyInfo propInfo in propInfos) {
                if (propInfo.CanWrite) {
                    try {
                        propInfo.SetValue(script, propInfo.GetValue(other, null), null);
                    } catch (Exception e) {
                        Debug.LogWarning("Exception happened when copying Type [" + type.Name + "] Property [" + propInfo.Name + "]"
                            + "\n[" + e.GetType().Name + "]: " + e.Message
                            + "\n That property has not been copied correctly and may cause strange behaviour!");
                    }
                }
            }
            type = type.BaseType;
        }
    }
}
