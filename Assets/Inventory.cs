using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : MonoBehaviour
{
    public int seedCount = 10;
    public int acornCount = 0;

    private void OnTriggerEnter(Collider collision)
    {
        if (collision.gameObject.CompareTag("SeedPickup"))
        {
            seedCount += 10;
            Destroy(collision.gameObject);
        }
        if (collision.gameObject.CompareTag("AcornPickup"))
        {
            acornCount += 5;
            Destroy(collision.gameObject);
        }
    }

}
