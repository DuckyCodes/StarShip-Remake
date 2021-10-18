void intro() {
  size(800, 800);
  init();
  //println(f);
  
  image(gif[f], width/2, height/2, width, height);

  if (frameCount % 2 == 0) f = f + 1; 
  if (f == numberOfFrames) f = 0;
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(white);
  text("Asteroid", width/2, 20);
  textSize(25);
    text("3 lives the number of lives left is on your ship.  \nr allows u to pause, \nt teleport to a random safe place. \ngoal is to destroy all aliens and asteriods\n  click your mouse to start playing!\nHello i don't know why everything instant dies\n everything is fine i think except for the insta death :(\n ran out of time so i can't figure it out", width/2, height/2);
    

  
}

void introClicks() {



  mode = gmode;
}
