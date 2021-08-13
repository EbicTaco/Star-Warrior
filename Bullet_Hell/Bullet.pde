class Bullet extends GameObject
{
 Bullet()
 {
  x = myShip.x;
  y = myShip.y;
  dx = 0;
  dy = - 15;
  hp = 1;
  w = 15;
  h = 15;
 }
 
 void show()
 {
  fill(0, 0, 0);
  rect(x, y, w, h);
  imageMode(CENTER);
  image(spLaser2, x, y);
  spLaser2.resize(15, 15);
  
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
