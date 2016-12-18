using UnityEngine;
using System.Collections;

public class tableSound : MonoBehaviour {
  private void OnTriggerEnter(Collider other) {
    GetComponent<AudioSource>().Play();
  }
}