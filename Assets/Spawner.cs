using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    [SerializeField] GameObject acornRef;
    [SerializeField] GameObject seedRef;
    [SerializeField] int mode = 0;
    GameObject spawnObject = null;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (spawnObject == null)
        {
            StartCoroutine(SpawnAfterTime());
        }
    }
    IEnumerator SpawnAfterTime()
    {
        spawnObject = Instantiate(ChooseObject(), Vector3.zero, Quaternion.identity);
        spawnObject.SetActive(false);
        spawnObject.transform.position = transform.position;
        yield return new WaitForSeconds(Random.Range(10f, 15f));
        spawnObject.SetActive(true);
    }

    GameObject ChooseObject()
    {
        switch (mode)
        {
            case 1:
                return acornRef;
            case 2:
                return seedRef;
            default:
                if (Random.Range(0f, 1f) < .5f)
                {
                    return acornRef;
                }
                return seedRef;
        }
    }
}
