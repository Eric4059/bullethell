void game() {
  background(0);
  star.add(new Star());


  int i = 0;
  while (i < star.size()) {
    Star s = star.get(i);
    s.act();
    s.show();


    if (s.lives == 0) {
      star.remove(i);
    } else {
      i++;
    }
  }
}


void gameClicks() {
}
