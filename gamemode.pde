void gmode() {
  for (int i=0; i<myObjects.size(); i++) {
    GameObject b = myObjects.get(i);
    if (b instanceof Asteroid) {
      AsteriodsCount++;
    }
  }
  for (int i=0; i<myObjects.size(); i++) {
    GameObject b = myObjects.get(i);
    b.show();
    b.act();

    if (b.lives<=0) {
      if (b instanceof UFO) {
        time=1000;
        liveUFO=true;
      }
      myObjects.remove(i);
      i--;
    }
  }
  time--;
  if (time<=0 && liveUFO && !deadUFO) {
    int temp=int(random(0, 4));
    if (temp==0) {

      myUFO=new UFO(random(15, width-15), -15, random(-0.15, 0.15), random(0.3, 0.7));
    } else if (temp==1) {
      myUFO=new UFO(random(15, width-15), height+15, random(-0.15, 0.15), random(-0.3, -0.7));
    } else if (temp==2) {
      myUFO=new UFO(-15, random(15, height-15), random(0.3, 0.7), random(-0.15, 0.15));
    } else if (temp==3) {
      myUFO=new UFO(width+15, random(15, height-15), random(-0.3, -0.7), random(-0.15, 0.15));
    }
    myObjects.add(myUFO);
    liveUFO=false;
  }

  int i = 0;
  //while (i < myObjects.size()) {
  //  GameObject b = myObjects.get(i);
  //  b.show();
  //  b.act();

  //  if (b.lives == 0) {
  //    //println("she");
  //    myObjects.remove(i);
  //  } else {

  //    i++;
  //  }
  //}


  if (AsteriodsCount == 0) {
    timer++;
    if (timer==100)
      mode=gameover;
  }
 AsteriodsCount = 0;
  
 fill(black);
 rect(0, 0, 100, 30);
 
 fill(red);
 rect(0, 0, culdown, 30);
 
  
}
