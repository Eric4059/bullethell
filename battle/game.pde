void game() {
  background(0);
  stars.add(new Star());
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();


    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
  while (i < stars.size()) {
    Star s = stars.get(i);
    s.act();
    s.show();

    if (s.lives == 0) {
      stars.remove(i);
    } else {
      i++;
    }
  }




  

  player1.act();
  player1.show();
  
  
  enemies.act();
  enemies.show();
}


void gameClicks() {
}
