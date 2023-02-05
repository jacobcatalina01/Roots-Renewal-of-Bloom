using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{

    public AudioClip explosionOnCollide;

    public AudioClip acornLauncher;

    public AudioClip swing;

    public AudioClip seedshot;

    public AudioClip pickup;

    public AudioClip seedhit;

    public AudioClip meleehit;

    public AudioClip shieldDeflect;

    public static AudioManager Instance;


    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(this);
        }
        else
        {
            Destroy(this);
        }
    }


    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void Update()
    {

    }

    public static void Play(AudioClip clip)
    {
        // fix this later
        AudioSource.PlayClipAtPoint(clip, Instance.gameObject.transform.position);
    }
}
