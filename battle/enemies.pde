class Enemy extends GameObject {

  Enemy() {
    x = random(20, width - 20);
    size = random(40, 60);
    y = 0;
    vy = 3;
    lives = 3;
  }



  void act() {

    super.act();
    //if (y > height) {
    //  lives = 0;
    //}
    int i = 0;
    while (i < objects.size()){
      if(objects.get(i) instanceof Bullet){
        if(collidingWith(objects.get(i))){
           lives --;
        }
      
      } 
    i++;
    }
    
    
    //shoot
    objects.add(new EnemyBullet());
    
    
  }


  void show() {


    fill(255);
    image(enemy, x, y, size, size);
  }
}
