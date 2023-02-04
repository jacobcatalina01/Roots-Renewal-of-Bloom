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
        AudioManager.Play(AudioManager.Instance.explosionOnCollide);
    }
    private void OnCollisionEnter(Collision col)
    {
        Debug.Log("Play");
        if (!GetComponent<GameObjectRef>().go.Contains(col.gameObject))
        {
            GameObject go = Instantiate(spawnObjectRef);
            go.transform.position = transform.position;
            Destroy(gameObject);
        }
    }
}
