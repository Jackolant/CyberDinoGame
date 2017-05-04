using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

    public float myTimer = 300;
    Text timerText;

    // Use this for initialization
    void Start()
    {
        timerText = GetComponent<Text>();

		StartCoroutine(Countdown());

    }
		

	IEnumerator Countdown()
	{
		while (myTimer > -1) 
		{
			if (myTimer == 0)
				Ending ();
			else 
			{
				//timerText.text = myTimer.ToString ();
				string minutes = Mathf.Floor((int)myTimer / 60).ToString();
				string seconds = Mathf.Floor(myTimer % 60).ToString("0 0");
				timerText.text = minutes + " : " + seconds;
			}

			myTimer--;
			yield return new WaitForSecondsRealtime(1);
		}

		//timerText.text = "";
	}

	//game Ending
	void Ending()
	{
        MapManager.instance.EndMatchByTimeout();
    }

}
