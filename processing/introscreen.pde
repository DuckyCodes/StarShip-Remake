void intro() {
  size(800, 800);
  init();
  //println(f);
  
  image(gif[f], width/2, height/2, width, height);

  if (frameCount % 2 == 0) f = f + 1; 
  if (f == numberOfFrames) f = 0;
  textAlign(CENTER,CENTER);
  textSize(50);
  text("Asteroid", width/2, height/3);
  
  
}

void introClicks() {



  mode = gmode;
}
