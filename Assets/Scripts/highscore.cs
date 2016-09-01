// using UnityEngine;
// using System;
// using System.Collections;

// public class highscore : MonoBehaviour {

//   private int highscores;
//   private int score;

//   public void StoreAndSetScores () {
//     highscores = PlayerPrefs.GetInt("highscore");

//     GameObject cam = GameObject.Find("Score");
//     score = cam.GetComponent<scoreScriptNew>().ReturnScore(); 
//     // score = scorescript.ReturnScore();
//     // scorescript.DebugTest();

//     PlayerPrefs.SetInt("yourscore", score);

//     if (score > highscores) {
//       highscores = score;
//       PlayerPrefs.SetInt("highscore", highscores);
//     }
//     else {
      
//     }

//   }
// }
