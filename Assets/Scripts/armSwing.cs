using UnityEngine;
using System.Collections;

public class armSwing : MonoBehaviour {

  private AudioSource audio;
  private Animator animation;

  private void Start() {
    audio = GetComponent<AudioSource>();
    animation = GetComponent<Animator>();
  }

  private void Update() {
    if(Input.GetButtonDown("Fire1")){
      if (!animation.GetCurrentAnimatorStateInfo(0).IsName("ArmSwing")) {
        audio.Play();
      }
      animation.SetTrigger("Swing");
    }
  }
}