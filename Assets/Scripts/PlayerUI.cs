using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerUI : MonoBehaviour
{
    [SerializeField] Slider sliderRef;
    [SerializeField] GameObject crossHair;
    [SerializeField] TextMeshProUGUI item1;
    [SerializeField] TextMeshProUGUI item2;

    [SerializeField] PlayerController pc;



    private void Update()
    {
        if (pc == null)
        {
            Destroy(sliderRef.gameObject);
            Destroy(gameObject);
        }
        else
        {
            if (pc.item1 == null)
            {
                item1.text = "";
            }
            else
            {
                item1.text = pc.item1.GetName();
            }
            if (pc.item2 == null)
            {
                item2.text = "";
            }
            else
            {
                item2.text = pc.item2.GetName();
            }
            sliderRef.value = pc.winTimer / GManager.instance.gameLength;


        }
    }
}
