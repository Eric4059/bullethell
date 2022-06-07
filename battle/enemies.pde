class Enemy extends GameObject{
  float x, y, size;
  float vx, vy;
  int lives;

  Enemy(){
  
    x = random(0, width);
    size = random(40, 60);
    y = 0;
    vy = 4;
    lives = 3;
    
    
    
  
  }
  
  
  
  void act(){
   
    super.act();
    
    y += vy;
    
    
  
  
  }
  
  
  void show(){
    
    
    fill(255);
    square(x, y, size);
    
  
  }


}
