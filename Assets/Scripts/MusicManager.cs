using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MusicManager : MonoBehaviour {

  public static MusicManager Instance { get; private set; }
  
  public AudioClip musicMainMenu;
  public AudioClip musicLevel1;
  
  private void Awake() {
    if (Instance != null && Instance != this) {
      Destroy(gameObject);
      return;
    } else {
      Instance = this;
    }
    
    DontDestroyOnLoad(gameObject);

    Scene scene = SceneManager.GetActiveScene();
    int sceneNum = scene.buildIndex;

    if (sceneNum == 0) {
      // GetComponent.<AudioSource>().Stop();
      GetComponent<AudioSource>().clip = musicMainMenu;
      // GetComponent<AudioSource>().Play();      
    }
    else if (sceneNum == 2) {
      // GetComponent<AudioSource>().Stop();
      GetComponent<AudioSource>().clip = musicLevel1;
      GetComponent<AudioSource>().Play();
    }
    else if (sceneNum == 3) {
      // GetComponent<AudioSource>().Stop();
      GetComponent<AudioSource>().clip = musicMainMenu;
      GetComponent<AudioSource>().Play();
    }
  }
    
  // public static function GetInstance() : MusicSingleton {
  //   return Instance;
  // }
}
