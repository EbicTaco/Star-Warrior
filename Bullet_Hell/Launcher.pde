class Launcher extends GameObject
{
 Launcher()
 {
  x = width/2;
  y = -100;
  dx = 0;
  dy = 0;
  
 }
 
 void show()
 {
  fill(100);
  ellipse(x, y, 100, 100);
 }
 
 void act()
 {
   if(frameCount < 100){
     randomWave1();
   } else if (frameCount<400){
     randomWave1();
   } else if  (frameCount<600){
      randomWave1(); 
   } else if (frameCount<1500){
      randomWave1();
   } 
 }
  void randomWave1()
  {
   x = random(50, width-50); 
   if (frameCount % 60 == 0)
   {
     engine.add(new Enemy(x, y)); 
   }
   
  }
  
 
 boolean hasDied()
 {
   return false;
 }
   
 
 
}
