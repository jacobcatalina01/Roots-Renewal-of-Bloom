using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class VFXManager : MonoBehaviour
{

    public VisualEffect Instance;

    // Start is called before the first frame update
    void Start()
    {
        Instance.Play();

        StartCoroutine(Destroytimer());
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    IEnumerator Destroytimer()
    {
        yield return new WaitForSeconds(10);
        Destroy(Instance);
    }
    
}
