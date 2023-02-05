using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class PlayerUI : MonoBehaviour
{

    public PlayerController player;
    public int item1Capacity;
    public int item2Capacity;
    public TMP_Text item1Text;
    public TMP_Text item2Text;

    int acornCapacity = 5;
    int seedCapacity = 10;
    int meleeCapacity = 15;
    int shieldCapacity = 10;


    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        /*if (player.item1)
        {
            item1Capacity = player.item1.capacity;
            item1Text.text = item1Capacity.ToString();
            
        }

        if (player.item2)
        {
            item2Capacity = player.item2.capacity;
            item2Text.text = item2Capacity.ToString();
        }*/

        
    }
}
