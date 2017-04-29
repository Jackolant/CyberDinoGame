using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class loadingBarManager : MonoBehaviour
{

    public static float percentLoaded;

    // Use this for initialization
    void Start()
    {
        percentLoaded = 0f;
    }

    // Update is called once per frame
    void Update()
    {
        if (percentLoaded < 0 || percentLoaded > 100) return;
        gameObject.GetComponent<Image>().fillAmount = percentLoaded / 100f;
    }
}
