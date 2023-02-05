using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TreeAnimatorHandler : MonoBehaviour
{
    Animator anim;
    [SerializeField] PlayerController pc;
    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponent<Animator>();
    }

    // Update is called once per frame
    void Update()
    {
        anim.SetFloat("InputMag", pc.inputMag);
        anim.SetBool("OnGround", pc.onGround);

    }
}
