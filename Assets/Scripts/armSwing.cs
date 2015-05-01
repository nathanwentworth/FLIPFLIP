using UnityEngine;
using System.Collections;

public class armSwing : MonoBehaviour {
  public Animation armAni;
  void Start() {
    armAni = GetComponent<Animation>();
  }
  void Update(){
    if(Input.GetButtonDown("Fire1")){
      GetComponent<AudioSource>().Play();
      armAni.Play("ArmUp");
    }
  }
}