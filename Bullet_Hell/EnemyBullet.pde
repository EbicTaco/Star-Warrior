class EnemyBullet extends GameObject{
 EnemyBullet(float incomingX, float incomingY){
  x = myBoss.x;
  y = myBoss.y;
  dx = incomingX;
  dy = incomingY;
  hp = 1;
  w = 15;
  h = 15;
  
 }
 
 
 void show()
 {
  fill(0, 0, 0);
  rect(x, y, w, h);
  imageMode(CENTER);
  image(spLaser, x, y);
  spLaser.resize(15, 15);
  
 }
 
 void act()
 {
  x = x + dx;
  y = y + dy;
 }
 
 boolean hasDied()
  {
  return y < 0 || hp <= 0; 
 }
}
