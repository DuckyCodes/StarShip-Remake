void gameover() {
  //println("asdF");
  if (myShip.lives==0) {
    win=false;
  } else if (myShip.lives>0) {
    win=true;
  }

  if (win) {
    fill(0);
    size(800, 800);
    fill(blue);
    text("GAMEOVER", 300, 300);
  } else {
    fill(0);
    size(800, 800);
    fill(blue);
    text("LOSER", 300, 300);
  }
}
void gameoverClicks() {



  mode = intro;
}
