using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(GameObjectRef))]
public class ExplodeOnTouch : MonoBehaviour
{
    public GameObject explosionVFX;

    [SerializeField] GameObject spawnObjectRef;
    private void Start()
    {
        GetComponent<Rigidbody>().collisionDetectionMode = CollisionDetectionMode.Continuous;
    }
    private void OnCollisionEnter(Collision col)
    {
        Debug.Log("Play");

        AudioManager.Play(AudioManager.Instance.explosionOnCollide);
        Instantiate(explosionVFX, transform.position, Quaternion.identity);
        
        if (!GetComponent<GameObjectRef>().go.Contains(col.gameObject))
        {
            GameObject go = Instantiate(spawnObjectRef);
            go.transform.position = transform.position;
            Destroy(gameObject);
        }
    }
}
