using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    [SerializeField] GameObject itemRef;
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
        spawnObject = Instantiate(itemRef, Vector3.zero, Quaternion.identity);
        spawnObject.GetComponent<Item>().type = ChooseObject();
        spawnObject.GetComponent<Item>().Reset();
        spawnObject.SetActive(false);
        spawnObject.transform.position = transform.position;
        yield return new WaitForSeconds(Random.Range(10f, 15f));
        spawnObject.SetActive(true);
    }

    Item.ItemType ChooseObject()
    {
        switch (mode)
        {
            case 1:
                return Item.ItemType.Seed;
            case 2:
                return Item.ItemType.Acorn;
            default:
                float rand = Random.Range(0f, 1f);
                if (rand < .25f)
                {
                    return Item.ItemType.Seed;
                }
                else if (rand >= .25f && rand < .5f)
                {
                    return Item.ItemType.Acorn;
                }
                else if (rand >= .5f && rand < .75f)
                {
                    return Item.ItemType.Melee;
                }
                else
                {
                    return Item.ItemType.Shield;
                }
        }
    }
}
