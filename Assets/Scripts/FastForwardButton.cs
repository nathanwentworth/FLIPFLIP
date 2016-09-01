using UnityEngine;
 
public class FastForwardButton : MonoBehaviour
{
  void Update()
  {
    if(Application.isEditor && Input.GetKeyDown(KeyCode.F))
    {
      if(Time.timeScale == 1)
        Time.timeScale = 7;
      else
        Time.timeScale = 1;
    }
  }
}