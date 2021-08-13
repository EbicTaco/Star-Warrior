class Ship extends GameObject {
  Gun myGun;
  Ship() {
   x = width/2;
   y = height/2;
   dx = 0;
   dy = 0;
   w = 40;
   h = 40;
   hp = 20;
   myGun = new BasicGun();
 }
 
 void show()
 {
   fill(0, 0, 0);
   rect(x, y, w, h);
   imageMode(CENTER);
   image(spShip, x, y);
   spShip.resize(50, 50);
   
 }
 
 void act()
 {
   fill(255, 0, 0);
   textSize(40);
   text("HP:", 1250, 200);
   text(hp, 1300, 200);
   dx = 0;
   dy = 0;
   
   if(wkey) dy = -5;
   if(akey) dx = -5;
   if(skey) dy = 5;
   if(dkey) dx = 5;
   if (spacekey) myGun.shoot();
   
   x = x + dx;
   y = y +dy;
   myGun.recharge();
   int x = 0;
    while (x < engine.size()){
     GameObject hit = engine.get(x);
     if (hit instanceof EnemyBullet){
      if (rectRect(x, y, 50, 50, hit.x, hit.y, 15, 15)){
       hp = hp - 1; 
       hit.hp = 0;
       engine.add(new Particle(hit.x, hit.y));
       engine.add(new Particle(hit.x, hit.y));
       engine.add(new Particle(hit.x, hit.y));
       engine.add(new Particle(hit.x, hit.y));
      }
     }
     x++;
    }
    int j = 0;
    while (j < engine.size()){
     GameObject hit = engine.get(j);
     if (hit instanceof Enemy){
      if (rectRect(x, y, 40, 40, hit.x, hit.y, 15, 15)){
       hp = hp - 1; 
       hit.hp = 0;
       engine.add(new Particle(hit.x, hit.y));
       engine.add(new Particle(hit.x, hit.y));
      }
     }
     j++;
    }

   
 }
 
 
  
  boolean hasDied()
  {
    return hp <= 0;
  }
}
