using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(GameObjectRef))]
public class ExplodeOnTouch : MonoBehaviour
{
    [SerializeField] GameObject spawnObjectRef;
    private void Start()
    {
        GetComponent<Rigidbody>().collisionDetectionMode = CollisionDetectionMode.Continuous;
    }
    private void OnTriggerEnter(Collider other)
    {
        AudioManager.Play(AudioManager.Instance.explosionOnCollide);
        if (!GetComponent<GameObjectRef>().go.Contains(other.gameObject))
        {
            GameObject go = Instantiate(spawnObjectRef);
            go.transform.position = transform.position;
            Destroy(gameObject);
        }
    }
}
