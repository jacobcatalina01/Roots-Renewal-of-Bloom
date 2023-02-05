using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GManager : MonoBehaviour
{

    public static GManager instance;
    public float gameLength = 45f;

    public PlayerController[] players;

    private void Awake()
    {
        instance = this;
    }


    // Update is called once per frame
    void Update()
    {
        PlayerController winner = null;
        foreach (PlayerController p in players)
        {
            if (p.winTimer > gameLength)
            {
                winner = p;
            }
        }
        if(winner != null )
        {
            Victory(winner);
        }
    }

    void Victory(PlayerController winner)
    {
        foreach (PlayerController p in players)
        {
            p.enabled = false;
        }

        //load victory screen
    }
}
