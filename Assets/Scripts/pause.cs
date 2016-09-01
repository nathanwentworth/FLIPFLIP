using UnityEngine;
using System.Collections;

public class pause : MonoBehaviour {

  private bool cursorLocked = false;

  private bool isShowing;

  public GameObject PauseMenu;

	void Start () {
	
	}
	
	void Update () {
	
	}
  void IsPaused() {
    if(Input.GetButtonDown("Pause")) {
      if (cursorLocked == false) {
        Cursor.lockState = CursorLockMode.Locked;
        cursorLocked = true;
        Cursor.visible = true; 
        isShowing = !isShowing;
        PauseMenu.SetActive(isShowing);
      }    
    }
  }
}
