using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class scoreScriptNew : MonoBehaviour {

  private static int score;
  private static int goal;
  private static bool gameWin;

  public Text Score;
  public Text Goal;

  void Start() {
    score = 0;
    goal = 2000;
    Score = (Text)Score.GetComponent(typeof(Text)); 
    Goal = (Text)Goal.GetComponent(typeof(Text)); 
  }

  void OnTriggerEnter(Collider other) {
    if(other.gameObject.tag == "Score25") {
      score += 25;
    }
    if(other.gameObject.tag == "Score50") {
      score += 50;
    }
    if(other.gameObject.tag == "Score100") {
      score += 100;
    }
    if(other.gameObject.tag == "Score250") {
      score += 250;
    }
  }
  void OnTriggerExit(Collider other) {
    if(other.tag == "Score25") {
      score -= 25;
    }
    if(other.tag == "Score50") {
      score -= 50;
    }
    if(other.tag == "Score100") {
      score -= 100;
    }
    if(other.tag == "Score250") {
      score -= 250;
    }
  }
  void Update () {
    Score.text = "Score: " + score;
    Goal.text = "Goal: " + goal;
    if (score >= goal) {
      gameWin = true;
    }
    if (score < goal) {
      gameWin = false;
    }
  }
  public bool ReturnWin() {
    return gameWin;
  }
  public int ReturnScore() {
    return score;
  }

}
