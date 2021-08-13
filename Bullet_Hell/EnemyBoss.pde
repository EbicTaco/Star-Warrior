class EnemyBoss extends GameObject{
  Gun enemyGun;
  
  EnemyBoss(){
   x = width/2+40;
   y = height/2+40;
   dx = 0;
   dy = 0;
   w = 65;
   h = 65;
   hp = 20;
   score = 0;
   enemyGun = new BasicGun();
  }
  
  void show(){
   fill(0, 0, 0);
   rect(x, y, w, h);
   imageMode(CENTER);
   image(enShip, x, y);
   enShip.resize(75, 75);
  }
  
  void act(){
    dx = 0;
    dy = 0;
    
    if(hp <= 20){
      if(frameCount % 20 == 0){
       engine.add(new EnemyBullet(5, 7));
       engine.add(new EnemyBullet(-5, 7));
       engine.add(new EnemyBullet(8, 7));
       engine.add(new EnemyBullet(-8, 7));
       engine.add(new EnemyBullet(50, 7));
       engine.add(new EnemyBullet(-50, 7));
       engine.add(new EnemyBullet(80, 7));
       engine.add(new EnemyBullet(-80, 7));
       engine.add(new EnemyBullet(100, 7));
       engine.add(new EnemyBullet(-100, 7));
       engine.add(new EnemyBullet(130, 7));
       engine.add(new EnemyBullet(-130, 7));
      }
    }
    if(hp <= 15){
      x = 400;
      y = 100;
      if(frameCount % 20 == 0){
       engine.add(new EnemyBullet(50, 7));
       engine.add(new EnemyBullet(-50, 7));
       engine.add(new EnemyBullet(80, 7));
       engine.add(new EnemyBullet(-80, 7));
       engine.add(new EnemyBullet(13, 7));
       engine.add(new EnemyBullet(-13, 7));
       engine.add(new EnemyBullet(800, 7));
       engine.add(new EnemyBullet(-800, 7));
       engine.add(new EnemyBullet(1000, 7));
       engine.add(new EnemyBullet(-1000, 7));
       engine.add(new EnemyBullet(130, 7));
       engine.add(new EnemyBullet(-130, 7));
      }
    }
    if(hp <= 10){
      x = 900;
      y = 200;
     if(frameCount % 20 == 0){
       engine.add(new EnemyBullet(5, 7));
       engine.add(new EnemyBullet(-5, 7));
       engine.add(new EnemyBullet(8, 7));
       engine.add(new EnemyBullet(-8, 7));
       engine.add(new EnemyBullet(50, 7));
       engine.add(new EnemyBullet(-50, 7));
       engine.add(new EnemyBullet(80, 7));
       engine.add(new EnemyBullet(-80, 7));
       engine.add(new EnemyBullet(100, 7));
       engine.add(new EnemyBullet(-100, 7));
       engine.add(new EnemyBullet(130, 7));
       engine.add(new EnemyBullet(-130, 7));
     }
    }
    if(hp <= 5){
      x = 700;
      y = 500;
     if(frameCount % 20 == 0){
       engine.add(new EnemyBullet(5, 7));
       engine.add(new EnemyBullet(-5, 7));
       engine.add(new EnemyBullet(8, 7));
       engine.add(new EnemyBullet(-8, 7));
       engine.add(new EnemyBullet(50, 7));
       engine.add(new EnemyBullet(-50, 7));
       engine.add(new EnemyBullet(80, 7));
       engine.add(new EnemyBullet(-80, 7));
       engine.add(new EnemyBullet(100, 7));
       engine.add(new EnemyBullet(-100, 7));
       engine.add(new EnemyBullet(130, 7));
       engine.add(new EnemyBullet(-130, 7));
       engine.add(new EnemyBullet(500, 7));
       engine.add(new EnemyBullet(-500, 7));
       engine.add(new EnemyBullet(800, 7));
       engine.add(new EnemyBullet(-800, 7));
      }
    }
    int i = 0;
    while (i < engine.size()){
     GameObject thing = engine.get(i);
     if (thing instanceof Bullet){
      if (rectRect(x, y, 50, 50, thing.x, thing.y, 15, 15)){
       hp = hp - 1; 
       thing.hp = 0;
       engine.add(new Particle(thing.x, thing.y));
       engine.add(new Particle(thing.x, thing.y));
      }
     }
     i++;
    }

  }
  
  boolean hasDied(){
    return hp <= 0;
  }
}
