using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class timerCS : MonoBehaviour {

  public Text Timer;

  public Image win_img;
  public Image one_min_img;
  public Image game_over_img;

  private float timeLeft;
  private float roundedtime;

  private int highscores;
  private int score;

  private string displayTime;

  public scoreScriptNew scoreScript;
  private bool win;

	private void Start() {
    Timer = GetComponent<Text>(); 
    Image win_img = GetComponent<Image>(); 
    Image one_min_img = GetComponent<Image>(); 
    Image game_over_img = GetComponent<Image>(); 
    timeLeft = 120.0f;
    scoreScriptNew scoreScript = GetComponent<scoreScriptNew>();
    win = scoreScript.ReturnWin();
    roundedtime = 0.0f;
	}
	
	private void Update() {
    if(roundedtime < 0) {
      roundedtime = 0;
    }

    if (timeLeft < 0) {
      StoreAndSetScores();
    }

    OneMinLeft();
    WinLossGUI();

    // PlayerPrefs.SetFloat("Score", score);

    if (timeLeft <= -5) {
      Application.LoadLevel ("EndScreen");
    }
	}

  private void FixedUpdate() {
    timeLeft -= Time.deltaTime;
    roundedtime = (float)System.Math.Round(timeLeft, 0);
    if (roundedtime <= 0) {
      roundedtime = 0;
    }
    displayTime = FloatToTime((float)roundedtime, "#0:00");
    Timer.text = "time left:\n" + displayTime;
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

    GameObject cam = GameObject.Find("Score");
    score = cam.GetComponent<scoreScriptNew>().ReturnScore(); 

    PlayerPrefs.SetInt("yourscore", score);

    if (score > highscores) {
      highscores = score;
      PlayerPrefs.SetInt("highscore", highscores);
      PlayerPrefs.SetInt("isnewhighscore", 1);
    }
  }

  public string FloatToTime (float toConvert, string format){
    switch (format){
      case "#0:00":
        return string.Format("{0:#0}:{1:00}",
          Mathf.Floor(toConvert / 60),//minutes
          Mathf.Floor(toConvert) % 60);//seconds
      break;
    }
    return "error";
  }
}
