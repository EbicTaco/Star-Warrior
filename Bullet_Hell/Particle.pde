class Particle extends GameObject{
 Particle(float incomingX, float incomingY){
  x = incomingX;
  y = incomingY;
  dx = random(-5, 5);
  dy = random(-5, 5);
  hp = random(100,255);
 }
 
 void show(){
  fill(255, hp);
  rect(x, y, 8, 8);
  
 }
 
 void act(){
  x = x+dx;
  y = y+dy;
  
  hp = hp-2;
 }
 
 boolean hasDied(){
   return hp <= 0;
 }
}
