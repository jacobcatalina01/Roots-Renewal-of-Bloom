using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuScene : MonoBehaviour
{
    public GameObject mainMenu;
    public GameObject startScreen;

    public void GoToMainMenu()
    {
        mainMenu.SetActive(true);
        startScreen.SetActive(false);
    }

    public void GoToStartScreen()
    {
        mainMenu.SetActive(false);
        startScreen.SetActive(true);
    }

    public void QuitGame()
    {
        Application.Quit();
    }
}
