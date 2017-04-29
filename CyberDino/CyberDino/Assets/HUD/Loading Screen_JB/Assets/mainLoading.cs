using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class mainLoading : MonoBehaviour
{
    bool readyLoaded;
    bool loadData;
    int[] a;
    float progress;

    // Use this for initialization
    // Set any variables / get data
    void Start()
    {
        loadData = true;
        readyLoaded = false;
        a = new int[5];
        for (int i = 0; i < 5; i++)
        {
            a[i] = 0;
        }
    }

    // Any code that needs to be run goes here!
    // Update is called once per frame
    void Update()
    {
        if (!loadData && a[1] == 0)
        {
            a[1] = 1;
        }
        loadingBarManager.percentLoaded++; //testing purposes only!
    }

    //Any changes to GUI go here!
    void OnGUI()
    {
        GUI.backgroundColor = Color.clear;
        GUI.contentColor = Color.black;
        Debug.LogWarning("Ready");

        if (loadData && a[1] == 0)
        {
            a[1] = 1;
        }

    }
}
