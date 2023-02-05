using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExplodeOnTouch : MonoBehaviour
{
    public GameObject explosionVFX;

    [SerializeField] GameObject spawnObjectRef;
    private void Start()
    {
        //GetComponent<Rigidbody>().collisionDetectionMode = CollisionDetectionMode.Continuous;
        //AudioManager.Play(AudioManager.Instance.explosionOnCollide);
    }
    private void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.CompareTag("Acorn"))
        {
            Instantiate(explosionVFX, col.transform.position, Quaternion.identity);
            GameObject go = Instantiate(spawnObjectRef);
            go.transform.position = col.transform.position;
            Destroy(col.gameObject);
        }
    }
}
