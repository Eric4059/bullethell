

int mode;
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
final int OPTIONS = 5;
final int GAME2 = 6;

boolean up, down, left, right, space;

ArrayList <Star> star;
int n = 100;


void setup() {
  size(800, 800, P2D);
  mode = INTRO;

  star = new ArrayList<Star>();
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
