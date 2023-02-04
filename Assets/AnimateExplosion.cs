using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class AnimateExplosion : MonoBehaviour
{
    // Start is called before the first frame update

    [SerializeField] float lifespan = .5f;
    
    void Start()
    {
        transform.localScale = Vector3.zero;
        StartCoroutine(Animate());
    }

    IEnumerator Animate()
    {
        float timer = 0f;
        while (timer < lifespan / 2)
        {
            transform.localScale = Vector3.one * Mathf.Lerp(0,1,timer/(lifespan/2));
            timer += Time.deltaTime;
            yield return null;
        }
        while (timer > 0)
        {
            transform.localScale = Vector3.one * Mathf.Lerp(0, 1, timer / (lifespan / 2));
            timer -= Time.deltaTime;
            yield return null;
        }
        Destroy(gameObject);
    }
}
