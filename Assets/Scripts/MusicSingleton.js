#pragma strict

public class MusicSingleton extends MonoBehaviour
{
  public static var instance : MusicSingleton;
  
  public var musicMainMenu : AudioClip;
  public var musicLevel1 : AudioClip;
  
  function Awake() 
  {
    if ( instance != null && instance != this ) 
    {
      Destroy( this.gameObject );
      return;
    } 
    else 
    {
      instance = this;
    }
    
    DontDestroyOnLoad( this.gameObject );
  }
  
  function OnLevelWasLoaded( level : int )
  {
    if ( level == 0) {
      // GetComponent.<AudioSource>().Stop();
      GetComponent.<AudioSource>().clip = musicMainMenu;
      // GetComponent.<AudioSource>().Play();
      }
    else if ( level == 2 ) {
      // GetComponent.<AudioSource>().Stop();
      GetComponent.<AudioSource>().clip = musicLevel1;
      GetComponent.<AudioSource>().Play();
    }
    else if ( level == 3 ) {
      // GetComponent.<AudioSource>().Stop();
      GetComponent.<AudioSource>().clip = musicMainMenu;
      GetComponent.<AudioSource>().Play();
    }
  }
  
  public static function GetInstance() : MusicSingleton 
  {
      return instance;
  }
}