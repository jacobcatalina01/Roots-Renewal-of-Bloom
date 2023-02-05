using System.Collections;
using System.Collections.Generic;
using System.Threading;
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

    public AudioClip[] music;


    public AudioClip winMusic;
    public AudioClip winSFX;

    AudioSource musicSource;


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
        musicSource= GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        if (!musicSource.isPlaying)
        {
            musicSource.clip = music[Random.Range(0, music.Length)];
            musicSource.Play();
        }
    }

    public static void PlayVictory()
    {
        AudioManager.Instance.StartCoroutine(AudioManager.Instance.AnimateVictoryVolume());
        Play(AudioManager.Instance.winSFX);
    }

    IEnumerator AnimateVictoryVolume()
    {
        float timer = 0;
        while (timer < 2f)
        {
            musicSource.volume = Mathf.Lerp(1, 0, timer / 2f);
            timer += Time.deltaTime;
            yield return null;
        }
        AudioManager.Instance.musicSource.clip = AudioManager.Instance.winMusic;
        AudioManager.Instance.musicSource.loop = true;
        AudioManager.Instance.musicSource.volume = 0;
        timer = 0;
        while (timer < 2f)
        {
            musicSource.volume = Mathf.Lerp(0, 1, timer / 2f);
            timer += Time.deltaTime;
            yield return null;
        }
    }

    public static void Play(AudioClip clip)
    {
        // fix this later
        AudioSource.PlayClipAtPoint(clip, Instance.gameObject.transform.position);
    }
}
