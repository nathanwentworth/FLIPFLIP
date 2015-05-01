using UnityEngine;
using System.Collections;

public class tableSound : MonoBehaviour {
  void OnTriggerEnter(Collider other) {
    GetComponent<AudioSource>().Play();

  }

}