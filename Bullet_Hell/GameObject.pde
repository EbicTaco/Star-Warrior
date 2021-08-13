abstract class GameObject{
  float x, y, dx, dy, w, h, hp, score;
  GameObject(){
    
  }
  
  void show(){

  }
  
  void act(){
    
  }
  
  
  boolean hasDied(){
    if (hp != 0){
     return false; 
    }
    else
    return true;
  }
}
