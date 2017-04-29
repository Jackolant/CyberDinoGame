using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class loadingBarPercent : MonoBehaviour
{

    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (loadingBarManager.percentLoaded < 0 || loadingBarManager.percentLoaded > 100) return;
        if (loadingBarManager.percentLoaded == 0f)
        {
            Debug.LogError("0");
            gameObject.GetComponent<Text>().text = "0  %";
            return;
        }
        Debug.LogError(loadingBarManager.percentLoaded);
        gameObject.GetComponent<Text>().text = loadingBarManager.percentLoaded + " %";
    }
}
