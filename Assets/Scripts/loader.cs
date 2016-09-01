using UnityEngine;
using System.Collections;

public class loader : MonoBehaviour {

  public void LoadMain(string StartPage) {
    Application.LoadLevel(StartPage);
  }
  public void LoadInfo(string InfoScreen) {
    Application.LoadLevel(InfoScreen);
  }
  public void LoadCredits(string Info) {
    Application.LoadLevel(Info);
  }
  public void LoadLevel(string Level1) {
    Application.LoadLevel(Level1);
  }
  public void Quit() {
    Application.Quit();
  }

  public void ResetHighscore() {
    PlayerPrefs.SetInt("highscore", 0);
  }
}