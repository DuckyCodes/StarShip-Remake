void intro() {
  size(800, 800);
  init();
  //println(f);
  image(gif[f], 0, 0, width, height);

  if (frameCount % 2 == 0) f = f + 1; 
  if (f == numberOfFrames) f = 0;
}

void introClicks() {



  mode = gmode;
}
