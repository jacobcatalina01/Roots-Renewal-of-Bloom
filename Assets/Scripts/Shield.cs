using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shield : MonoBehaviour
{
    [SerializeField] PlayerController pc;
    private void OnTriggerEnter(Collider other)
    {

        if (other.gameObject.CompareTag("Bullet") && !other.GetComponent<GameObjectRef>().go.Contains(pc.gameObject))

        {
            Destroy(other.gameObject);
        }
    }
}
