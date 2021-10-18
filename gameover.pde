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
    text("WINNER", width/2, height/2);
  } else {
    fill(0);
    size(800, 800);
    fill(blue);
    text("LOSER", width/2, height/2);
  }
}

void gameoverClicks() {



  mode = intro;
}
