class StarFighter extends GameObject{
  float x, y, size;
  float vx, vy;
  int lives;
  
  
  
  //constructor
  StarFighter(){
    x = 400;
    y = 400;
    vx = vy = 0;
    lives = 3;
    
  
  
  
  }
  
  
  
  
  //behaviour functions
  
  void act(){
    
     if(up) vy = -2;
     if(down) vy = 2;
     if(left) vx = -2;
     if(right) vx = 2;
     
     if(x <= 20) x = 20;
     if(x >= 780) x = 780;
     if(y <= 20) y = 20;
     if(y >= 780) y = 780;
     
     
     
     
     
     
     x += vx;
     y += vy;
  
  }
  
  
  void show(){
     fill(255);
     rect(x, y, 40, 40);
  
  }
  



}
