// private var startTime;
// static var restSeconds : int;
// private var roundedRestSeconds : int;
// private var displaySeconds : int;
// private var displayMinutes : int;
// var oneMin : Texture;
// var gOverTex : Texture;
// var gWinTex : Texture;
// var Gui : GUISkin;
// static var gameWin : boolean;
// static var gameLose : boolean;

// var countDownSeconds : int;

// function Awake() {
//     startTime = Time.time;
// }


// function Update() {
//     if (restSeconds <= -5 && gameWin == true) {
//         Application.LoadLevel ("EndScreen");
//     }
// }

// function OnGUI () {
//     GUI.skin = Gui;

//     //make sure that your time is based on when this script was first called
//     //instead of when your game started

//     var guiTime = Time.time - startTime;
//     restSeconds = countDownSeconds - (guiTime);
    
//     //display messages or whatever here -->do stuff based on your timer
//     if (restSeconds <= 60 && restSeconds >= 55) {
//         GUI.DrawTexture(Rect(Screen.width/2-128,Screen.height/2-128,256,256),oneMin);
//     }
//     if (restSeconds <= 0 && gameWin == true) {
//         GUI.DrawTexture(Rect(Screen.width/2-128,Screen.height/2-128,256,256),gWinTex);

//     }
//     else if (restSeconds <= 0 && gameLose == true) {
//         Application.LoadLevel ("EndScreen");
//     }

//     //display the timer
    
//         roundedRestSeconds = Mathf.CeilToInt(restSeconds);
//         displaySeconds = roundedRestSeconds % 60;
//         displayMinutes = roundedRestSeconds / 60; 

//     text = String.Format ("{0:00}:{1:00}", displayMinutes, displaySeconds); 

//     if (restSeconds >= 0) {
//         GUI.Label (Rect (50, 50, 200, 200), "Time Left!");
//         GUI.Label (Rect (50, 125, 200, 200), text);
//     }
//     GUI.Label (Rect (Screen.width-250, 50, 200, 200), "Your Score!");
//     GUI.Label (Rect (Screen.width-250, 125, 200, 200), " " + scoreScript.score);
//     GUI.Label (Rect (Screen.width-250, 200, 250, 200), "Goal:" + scoreScript.goal);
// }