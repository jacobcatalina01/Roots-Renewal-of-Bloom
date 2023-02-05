using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.VFX;

public class VFXManager : MonoBehaviour
{

    public VisualEffect Instance;
    public float destroyAfter = 10.0f;
    public bool stopEarly = false;
    public float stopEarlyAfter = 3.0f;

    // Start is called before the first frame update
    void Start()
    {
        Instance.Play();

        StartCoroutine(Destroytimer());
        if (stopEarly)
        {
            StartCoroutine(StopTimer());
        }
    }

    IEnumerator StopTimer()
    {
        yield return new WaitForSeconds(stopEarlyAfter);
        Instance.Stop();
    }

    IEnumerator Destroytimer()
    {
        yield return new WaitForSeconds(destroyAfter);
        Destroy(Instance);
    }
    
}
