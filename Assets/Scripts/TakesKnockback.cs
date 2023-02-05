using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TakesKnockback : MonoBehaviour
{
    public GameObject playerHitVFX;

    public GameObject smokeVFX;

    public int knockbacksmokecutoff;

    [SerializeField] float kbForce = 50f;
    bool shielded
    {
        get
        {
            return GetComponent <PlayerController>().hasShield;
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.CompareTag("Bullet") && !other.GetComponent<GameObjectRef>().go.Contains(this.gameObject))
        {
            AudioManager.Play(AudioManager.Instance.seedhit);
            Instantiate(playerHitVFX, transform.position, Quaternion.identity);
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
            Instantiate(playerHitVFX, transform.position, Quaternion.identity);
            TakeKnockback(transform.position - other.gameObject.transform.position, 1.5f, shielded);
            other.GetComponent<GameObjectRef>().go.Add(gameObject);
        }
    }
    private void OnCollisionEnter(Collision collision)
    {

        if (collision.gameObject.CompareTag("Player"))
        {
            //AudioManager.Play(AudioManager.Instance.meleehit);
            TakeKnockback(transform.position - collision.gameObject.transform.position, 1f, shielded);
        }
    }
    public void TakeKnockback(Vector3 s, float scale, bool isShielded)
    {

        var knockbackforce = (s).normalized * kbForce * scale * (isShielded ? .5f : 1);

        GetComponent<Rigidbody>().AddForce(knockbackforce);

        if (knockbackforce.magnitude > knockbacksmokecutoff)
        {

            var effect = Instantiate(smokeVFX, transform.position, Quaternion.identity);

            effect.transform.parent = transform;
        }

        if (isShielded)
        {
            AudioManager.Play(AudioManager.Instance.shieldDeflect);
            GetComponent<PlayerController>().UseShield();
        }
    }
}
