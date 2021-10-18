void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey= true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey= true;
  if (keyCode =='t'||keyCode=='T') {
      tkey = true;
    }
  

  if (mode==gmode) {
    if (keyCode =='r'||keyCode=='R') {
      mode=pause;
    }
  } else if (mode==pause) {
    if (key=='r'||key=='R') {
      mode=gmode;
    }
  }
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey= false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey= false;
}
