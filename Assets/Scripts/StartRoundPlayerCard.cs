using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StartRoundPlayerCard : MonoBehaviour
{
    public GameObject emptyObject;
    public GameObject occupiedObject;
    public bool occupied
    {
        get; private set;
    }

    public void Start()
    {
        Leave();
    }

    public void Join()
    {
        occupied = true;
        occupiedObject.SetActive(true);
        emptyObject.SetActive(false);
    }

    public void Leave()
    {
        occupied = false;
        occupiedObject.SetActive(false);
        emptyObject.SetActive(true);
    }
}
