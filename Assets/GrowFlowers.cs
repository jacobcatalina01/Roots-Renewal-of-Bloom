using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrowFlowers : MonoBehaviour
{

    Transform[] flowers;
    [SerializeField] PlayerController pc;

    // Start is called before the first frame update
    void Start()
    {
        flowers = transform.GetComponentsInChildren<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        foreach (Transform t in flowers)
        {
            if (t == transform) continue;
            t.localScale = Mathf.Lerp(0, 1, pc.winTimer/GManager.instance.gameLength) * Vector3.one;
        }
    }
}
