using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

public class Loader : MonoBehaviour {

  public void LoadScene(string scene) {
    SceneManager.LoadScene(scene);
  }

  public void Quit() {
    Application.Quit();
  }

  public void ResetHighscore() {
    PlayerPrefs.SetInt("highscore", 0);
  }
}