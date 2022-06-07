class GameObject {

  float x, y, vx, vy, size;
  int lives;
  color c;





  GameObject() {
  }

  void show() {
  }

  void act() {
    x = x + vx;
    y = y + vy;
  }
}
