using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using Unity.VisualScripting;

public class GManager : MonoBehaviour
{

    public static GManager instance;
    public float gameLength = 5f;
    bool gameEnded = false;
    public PlayerController[] players;

    [SerializeField] Image whiteScreen;
    [SerializeField] GameObject victoryUI;
    [SerializeField] TextMeshProUGUI victoryText;


    [SerializeField] TextMeshProUGUI[] timerTexts;

    [SerializeField] Camera victoryCamera;

    float wAlpha
    {
        set
        {
            whiteScreen.color = new Color(whiteScreen.color.r, whiteScreen.color.g, whiteScreen.color.b, value);
        }
    }

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
        if(winner != null && !gameEnded)
        {
            Victory(winner);
        }
        transform.Rotate(0, 1, 0);
    }

    void Victory(PlayerController winner)
    {
        gameEnded = true;
        for(int i = 0; i<players.Length; i++)
        {
            if (players[i].winTimer > gameLength)
            {
                victoryText.text = "player "+(i+1)+" wins";
            }
            timerTexts[i].text = "Player "+(i+1)+" time: " + players[i].winTimer;
            players[i].enabled = false;
            players[i].GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
        }

        StartCoroutine(AnimateVictoryScreen());
        //load victory screen
    }





    IEnumerator AnimateVictoryScreen()
    {
        yield return StartCoroutine(Flash(1,0,.2f));
        yield return new WaitForSeconds(.5f);
        yield return StartCoroutine(Flash(1, 0, .2f));
        yield return new WaitForSeconds(1.5f);

        yield return StartCoroutine(Flash(0, 1, 3f));

        victoryUI.SetActive(true);
        victoryCamera.gameObject.SetActive(true);

        yield return StartCoroutine(Flash(1, 0, 3f));


    }



    IEnumerator Flash(float start, float finish, float timespan)
    {
        wAlpha = start;
        float timer = 0f;
        while (timer < timespan)
        {
            timer += Time.deltaTime;
            wAlpha = Mathf.Lerp(start, finish, timer / timespan);
            yield return null;
        }
        wAlpha = finish;

    }



    public static void ReturnToMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }
}
