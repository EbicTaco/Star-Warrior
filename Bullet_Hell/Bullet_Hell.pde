ArrayList<GameObject> engine;
boolean wkey, akey, skey, dkey, spacekey, fkey, ckey, tkey, rkey, ekey;
Ship myShip;
EnemyBoss myBoss;
PImage spShip;
PImage enShip;
PImage spRock;
PImage spLaser;
PImage spLaser2;
PImage title;
Timer startTimer; 
String gameState;
int stage = 1;
int score;
void setup(){
  size(1900, 1000, FX2D);
  engine = new ArrayList<GameObject>(1000);
  rectMode(CENTER);
  myShip = new Ship();
  engine.add(myShip);
  spShip = loadImage("SpaceShip2.png");
  myBoss = new EnemyBoss();
  enShip = loadImage("EnemyBoss.png");
  spRock = loadImage("Asteroid.png");
  spLaser = loadImage("Laser.png");
  spLaser2 = loadImage("Laser2.png");
  title = loadImage("Space.png");
  engine.add(new Launcher());
  startTimer = new Timer(0);
  gameState = "START";
}

void draw(){
  background(0);
  if (gameState == "START"){
    startGame();
  }
  if (gameState == "MENU"){
    menu();
  }
  if (gameState == "STARTGAME"){
    playGame();
  }
  if (gameState == "CONTROLS"){
    controls();
  }
  if (gameState == "CREDITS"){
    credits();
  }
  if (gameState == "ENDGAME"){
    endGame();
  }
}

void startGame(){
  imageMode(CENTER);
  image(title, 0, 0);
  title.resize(2500, 2000);
  textSize(20);
  text("SPACE WARRIOR", 1300, 200);
  text("CLICK ANYWHERE TO START", 1300, 230);
  if(mousePressed == true){
    gameState = "MENU";
  }
}

void playGame(){
  background(0);
  startTimer.countUp();
  //text(frameCount, 100, 100);
  int i = engine.size()-1;
  while (i >= 0)
  {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied())
    {
      engine.remove(i);
    }
    i--;
  }
  
  engine.add(new Star());
  
  if (frameCount == 200){
   engine.add(myBoss);
  }
  
  if (frameCount > 301 && engine.contains(myBoss) == false){
    background(0);
    imageMode(CENTER);
    image(title, 0, 0);
    title.resize(2500, 2000);
    score = 1000;
    textSize(25);
    text("YOUR SCORE", 1300, 200);
    text(score, 1450, 200);
    text("WANT TO PLAY AGAIN? PRESS F\n\n IF NOT PRESS E TO RETURN\n\n TO MAIN MENU", 1300, 300);
    if (fkey == true){
      gameState = "STARTGAME";
    }
    if (ekey == true){
      gameState = "MENU";
    }
   }
  
  
   if (ekey == true){
    gameState = "MENU";
  }

}

void controls(){
  background(0);
  textAlign(CENTER);
  textSize(30);
  text("PRESS THE 'W' 'A' 'S' 'D' KEYS TO MOVE\n PRESS THE SPACE KEY TO SHOOT\n GOOD LUCK AND DONT GET HIT\n PRESS THE F KEY TO PLAY OR R KEY TO GO BACK TO THE MAIN MENU", width/2, height/2);
  if (fkey == true){
    gameState = "STARTGAME";
  }
  if (rkey == true){
    gameState = "MENU";
  }
  
}

void credits(){
  background(0);
  textAlign(CENTER);
  textSize(30);
  text("GAME CREATORS\n FERNANDO LOPEZ\n FETHULLAH UZUN\n ISRAEL PADILLA\n TO PLAY GAME PRESS THE F KEY", width/2, height/2-30);
  if (fkey == true){
    gameState = "STARTGAME";
  }
}

void menu(){
  imageMode(CENTER);
  image(title, 0, 0);
  title.resize(2500, 2000);
  textSize(25);
  text("PRESS F TO START PLAYING \n\n PRESS C TO VIEW CONTROLS \n\n PRESS T TO VIEW CREDITS", 1300, 200);
  
  if (fkey == true){
    gameState = "STARTGAME";
  }
  
  if (ckey == true){
    gameState = "CONTROLS";
  }
  
  if (tkey == true){
    gameState = "CREDITS";
  }
}

void endGame(){
  background(0);
  imageMode(CENTER);
  image(title, 0, 0);
  title.resize(2500, 2000);
  textSize(25);
  text("YOUR SCORE", 1200, 200);
  text(score, 1400, 200);
  text("WANT TO PLAY AGAIN? PRESS F\n\n IF NOT PRESS E TO RETURN TO MAIN MENU", 1300, 300);
  //if (fkey == true){
    //gameState = "STARTGAME";
  //}
  //if (ekey == true){
    //gameState = "MENU";
  //}
}

void keyPressed()
{
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 'a' || key == 'A') akey = true;
  if (key == 's' || key == 'S') skey = true;
  if (key == 'd' || key == 'D') dkey = true;
  if (key == ' ') spacekey = true;
  if (key == 'f' || key == 'F') fkey = true;
  if (key == 'c' || key == 'C') ckey = true;
  if (key == 't' || key == 'T') tkey = true;
  if (key == 'r' || key == 'R') rkey = true;
  if (key == 'e' || key == 'E') ekey = true;
}

void keyReleased()
{
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 'a' || key == 'A') akey = false;
  if (key == 's' || key == 'S') skey = false;
  if (key == 'd' || key == 'D') dkey = false;
  if (key == ' ') spacekey = false;
  if (key == 'f' || key == 'F') fkey = false;
  if (key == 'c' || key == 'C') ckey = false;
  if (key == 't' || key == 'T') tkey = false;
  if (key == 'r' || key == 'R') rkey = false;
  if (key == 'e' || key == 'E') ekey = false;
}
