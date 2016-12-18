using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class Timer : MonoBehaviour {

  private Text timerText;

  public Image win_img;
  public Image one_min_img;
  public Image game_over_img;

  private float timeLeft;
  private float roundedtime;

  private int highscores;
  private int score;

  private string displayTime;

  public ScoreScript scoreScript;
  private bool win;

	private void Start() {
    timeLeft = 120.0f;
    win = scoreScript.ReturnWin();
    roundedtime = 0.0f;
    timerText = GetComponent<Text>();
	}
	
	private void Update() {
    if (roundedtime < 0) {
      roundedtime = 0;
    }

    if (timeLeft < 0) {
      StoreAndSetScores();
    }

    OneMinLeft();
    WinLossGUI();

    if (timeLeft <= -5) {
      SceneManager.LoadScene ("EndScreen");
    }
	}

  private void FixedUpdate() {
    timeLeft -= Time.deltaTime;
    roundedtime = (float)System.Math.Round(timeLeft, 0);
    if (roundedtime <= 0) {
      roundedtime = 0;
    }
    displayTime = FloatToTime((float)roundedtime);
    timerText.text = "time left:\n" + displayTime;
  }

  private void OneMinLeft() {
    if (timeLeft <= 60 && timeLeft > 57) {
      one_min_img.color = new Color(1.0f, 1.0f, 1.0f, Mathf.Lerp(one_min_img.color.a, 1.0f, Time.deltaTime*5));
    }
    if (timeLeft <= 57) {
      one_min_img.color = new Color(1.0f, 1.0f, 1.0f, Mathf.Lerp(one_min_img.color.a, 0.0f, Time.deltaTime*10));
    }
  }

  private void WinLossGUI() {
    if (timeLeft <= 0 && win == true) {
      win_img.color = new Color(1.0f, 1.0f, 1.0f, Mathf.Lerp(win_img.color.a, 1.0f, Time.deltaTime*3));
    } 
    if (timeLeft <= 0 && win == false) {
      game_over_img.color = new Color(1.0f, 1.0f, 1.0f, Mathf.Lerp(game_over_img.color.a, 1.0f, Time.deltaTime*3));
    }
  }

  public void StoreAndSetScores () {
    highscores = PlayerPrefs.GetInt("highscore");

    score = scoreScript.ReturnScore();

    PlayerPrefs.SetInt("yourscore", score);

    if (score > highscores) {
      highscores = score;
      PlayerPrefs.SetInt("highscore", highscores);
      PlayerPrefs.SetInt("isnewhighscore", 1);
    }
  }

  public string FloatToTime (float toConvert){
    return string.Format("{0:#0}:{1:00}",
      Mathf.Floor(toConvert / 60),//minutes
      Mathf.Floor(toConvert) % 60);//seconds
  }
}
