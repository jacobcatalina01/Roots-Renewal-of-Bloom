using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.InputSystem;

public class StartRoundScreen : MonoBehaviour, PlayerInput.INewactionmapActions
{

    private PlayerInput controls;
    private Dictionary<InputDevice, int> devicePlayerNumber = new Dictionary<InputDevice, int>();

    private float startableTime = 0f;

    // really shitty requirement which is the delay between someone joining and being able to start the game
    public float startCooldown = 0.01f;
    public StartRoundPlayerCard[] playerCards = new StartRoundPlayerCard[0];

    private void OnEnable()
    {
        if (controls == null)
        {
            controls = new PlayerInput();

            var all = Gamepad.all;
            var devices = new Gamepad[all.Count];
            for (int i = 0; i < devices.Length; ++i)
            {
                devices[i] = all[i];
                devicePlayerNumber[devices[i]] = i;
            }
            
            controls.devices = devices;
        }
        if (!controls.Newactionmap.enabled)
        {
            controls.Newactionmap.Enable();
        }
        controls.Newactionmap.SetCallbacks(this);
    }

    private void OnDisable()
    {
        controls.Newactionmap.Disable();
    }

    private int GetPlayerNumber(InputAction.CallbackContext context)
    {
        int number = -1;
        devicePlayerNumber.TryGetValue(context.control.device, out number);
        return number;
    }

    void PlayerInput.INewactionmapActions.OnAim(InputAction.CallbackContext context) {}
    void PlayerInput.INewactionmapActions.OnJump(InputAction.CallbackContext context) {}
    void PlayerInput.INewactionmapActions.OnMove(InputAction.CallbackContext context) {}
    void PlayerInput.INewactionmapActions.OnShoot(InputAction.CallbackContext context) {}
    void PlayerInput.INewactionmapActions.OnShoot2(InputAction.CallbackContext context) {}
    void PlayerInput.INewactionmapActions.OnSelect(InputAction.CallbackContext context)
    {
        if (context.ReadValue<float>() > 0.5f)
        {
            int playerNumber = GetPlayerNumber(context);
            if (playerNumber == 0 && playerCards[playerNumber].occupied && Time.time > startableTime)
            {
                StartGame();
            }
            playerCards[playerNumber].Join();
            startableTime = Time.time + startCooldown;
        }
    }

    void PlayerInput.INewactionmapActions.OnBack(InputAction.CallbackContext context)
    {
        if (context.ReadValue<float>() > 0.5f)
        {
            int playerNumber = GetPlayerNumber(context);
            playerCards[playerNumber].Leave();
        }
    }

    public void StartGame()
    {
        Debug.Log("Game requested to start!!");
    }
}
