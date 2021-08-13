class Enemy extends GameObject
{

  Enemy(float incomingX, float incomingY)
  {
   x = incomingX;
   y = incomingY;
   dx = 0;
   dy = 4;
   hp = 3;
   w = 40;
   h = 40;
   score = 0;
  }
  
  void show()
  {
    fill(0, 0, 0);
    rect(x, y, w, h);
    imageMode(CENTER);
    image(spRock, x, y);
    spRock.resize(50, 50);
    
  }
  void act()
  {
    x = x + dx;
    y = y + dy;
    int i = 0;
    while (i < engine.size()){
     GameObject thing = engine.get(i);
     if (thing instanceof Bullet){
      if (rectRect(x, y, 50, 50, thing.x, thing.y, 15, 15)){
       hp = hp - 1; 
       score = score + 50;
       thing.hp = 0;
       engine.add(new Particle(thing.x, thing.y));
       engine.add(new Particle(thing.x, thing.y));
      }
     }
     i++;
    }
    
  }
  
  
  boolean hasDied()
  {
    return y > height || hp <= 0;
  }
}
