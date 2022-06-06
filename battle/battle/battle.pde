ArrayList <GameObject> objects;
ArrayList <Star> stars;
int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int GAME2 = 6;

boolean up, down, left, right, space;

StarFighter player1;

int n = 100;

PImage ship;
PImage bullet;


void setup() {
  size(800, 800, P2D);
  mode = INTRO;
  
  objects = new ArrayList<GameObject>();
  stars = new ArrayList<Star>();
  player1 = new StarFighter();
  
  rectMode(CENTER);
  
  imageMode(CENTER);
  
  ship = loadImage("ship.png");
  
  bullet = loadImage("bullet.png");
}




void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == OPTIONS) {
    options();
  } else {

    println("Error: Mode = " + mode);
  }
}
