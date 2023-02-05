using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CrosshairScript : MonoBehaviour
{
    public RectTransform CrosshairCanvas;

    public RectTransform Crosshairtransform;

    public float xscalefactor = 0.25f;

    public float yscalefactor = 0.25f;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        Crosshairtransform.anchoredPosition = new Vector3(CrosshairCanvas.rect.width * xscalefactor, CrosshairCanvas.rect.height * yscalefactor, 0);
    }
}
