using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameDataHandler : MonoBehaviour
{
    public static GameDataHandler instance = null;

    public bool[] players = new bool[4];


    // Start is called before the first frame update
    void Start()
    {
        if (instance != null)
        {
            Destroy(instance);
        }
        instance = this;
        DontDestroyOnLoad(gameObject);
    }

}
