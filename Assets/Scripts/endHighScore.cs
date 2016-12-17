using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class endHighScore : MonoBehaviour {

  private int highscores;
  private int yourscore;
  private int isNewHighScore;
  public Text your_score;
  public Text high_score;
  public Text new_high_score;

  public timerCS timerScript;

  private void Start () {
    Cursor.visible = true;
    Cursor.lockState = CursorLockMode.None;

    highscores = PlayerPrefs.GetInt("highscore");
    yourscore = PlayerPrefs.GetInt("yourscore");
    isNewHighScore = PlayerPrefs.GetInt("isnewhighscore");

    your_score = (Text)your_score.GetComponent(typeof(Text));
    high_score = (Text)high_score.GetComponent(typeof(Text));
    new_high_score = (Text)new_high_score.GetComponent(typeof(Text));

    your_score.text = "Your Score!\n" + yourscore;
    high_score.text = "High Score!\n" + highscores;

    Debug.Log(isNewHighScore);

    if (isNewHighScore == 1) {
      new_high_score.text = "New!";
    }
    else {
      new_high_score.text = " ";
    }

    PlayerPrefs.SetInt("isnewhighscore", 0);
  }
}