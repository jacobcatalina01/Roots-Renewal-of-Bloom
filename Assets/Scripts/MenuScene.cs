using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuScene : MonoBehaviour
{
    public GameObject mainMenu;
    public GameObject startScreen;
    public GameObject creditsScreen;

    public void Start()
    {
        GoToMainMenu();
    }

    public void GoToMainMenu()
    {
        mainMenu.SetActive(true);
        startScreen.SetActive(false);
        creditsScreen.SetActive(false);
    }

    public void GoToStartScreen()
    {
        mainMenu.SetActive(false);
        startScreen.SetActive(true);
        creditsScreen.SetActive(false);
    }

    public void GoToCredits()
    {
        mainMenu.SetActive(false);
        startScreen.SetActive(false);
        creditsScreen.SetActive(true);
    }

    public void QuitGame()
    {
        Application.Quit();
    }
}
