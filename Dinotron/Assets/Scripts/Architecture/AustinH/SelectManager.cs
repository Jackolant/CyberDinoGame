using UnityEngine;
using System.Collections;
using System.Collections.Generic; //allows use of generic lists

public class SelectManager : MonoBehaviour {
	public List<GetDinoInfo> listDinoManagers;
    private int count;
	
    // Use this for initialization
	void Start () {
        count = PlayerManager.PlayerCount;

        for (int i = 0; i < listDinoManagers.Count; i++)
        {
            listDinoManagers[i].gameObject.SetActive(i < count); // set active or disabled based on the player count. if player index < count, it's active.
        }
	}

}
