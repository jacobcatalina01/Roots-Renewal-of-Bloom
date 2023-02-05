using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TakesKnockback : MonoBehaviour
{
    [SerializeField] float kbForce = 10f;
    bool shielded
    {
        get
        {
            return GetComponentInChildren <PlayerController>().hasShield;
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Bullet") && !other.GetComponent<GameObjectRef>().go.Contains(this.gameObject))
        {
            AudioManager.Play(AudioManager.Instance.seedhit);
            TakeKnockback(other.GetComponent<Rigidbody>().velocity, 1f, shielded);
            Destroy(other.gameObject);
        }
        if (other.gameObject.CompareTag("Bomb") && !other.GetComponent<GameObjectRef>().go.Contains(this.gameObject))
        {
            TakeKnockback(transform.position-other.gameObject.transform.position, 2f, shielded);
            other.GetComponent<GameObjectRef>().go.Add(gameObject);
        }
        if (other.gameObject.CompareTag("Melee") && !other.GetComponent<GameObjectRef>().go.Contains(this.gameObject))
        {
            AudioManager.Play(AudioManager.Instance.meleehit);
            TakeKnockback(transform.position - other.gameObject.transform.position, 1.5f, shielded);
            other.GetComponent<GameObjectRef>().go.Add(gameObject);
        }
    }
    public void TakeKnockback(Vector3 s, float scale, bool isShielded)
    {
        GetComponent<Rigidbody>().AddForce((s).normalized * kbForce * scale * (isShielded ? .5f : 1));

        if (isShielded)
        {
            AudioManager.Play(AudioManager.Instance.shieldDeflect);
        }
    }
}
