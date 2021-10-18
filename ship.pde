class Ship extends GameObject {
  //1.Instance Variables

  PVector direction;
  int shotTimer, threshold, Invis;


  //2. constructor(S)
  Ship() {
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
    shotTimer = 0;
    threshold=60;
    Invis = 160;
  }


  void show() {
    pushMatrix();
    translate(location.x, location.y);

    fill(white);
    textAlign(CENTER, CENTER);
    textSize(25);
    text(lives, CENTER, CENTER);

    rotate(direction.heading());
    noFill();
    stroke(255);
    triangle(-25, -12.5, -25, 12.5, 25, 0);

    popMatrix();
  }

  void act() {
    super.act();
    shotTimer++;



    if (upkey) {
      velocity.add(direction);
      myObjects.add(new Fire());
    }
    if (downkey) velocity.sub(direction);

    if (leftkey) direction.rotate(-radians(5) );

    if (rightkey) direction.rotate(radians(5) );

    if (spacekey&& shotTimer>threshold) {
      myObjects.add(new Bullet());
      shotTimer=0;
    }

    //sped cap
    if (velocity.mag() > 5) {
      velocity.setMag(5);
    }
    if (upkey == false) velocity.setMag(velocity.mag()*0.991);
    if (downkey == false) velocity.setMag(velocity.mag()*0.991);

    if (tkey&&culdownword==false) {
      while (true) {
        tp=true;
        location.x=random(0, width);
        location.y=random(0, height);
        for (int i=0; i<myObjects.size(); i++) {
          GameObject GB = myObjects.get(i);
          if (GB instanceof Asteroid) {
            if (dist(location.x, location.y, GB.location.x, GB.location.y)<=225+GB.size/2)
              tp=false;
          }
        }
        if (tp)
          break;
      }
      //bar
      tkey=false;
      culdownword=true;
    } else if (culdownword) {
      culdown = culdown - 1;
      if (culdown<=0) {
        culdownword = false;
        culdown=100;
      }
    }

    //colousion
    Invis = Invis - 1;
    int i = 0;
    if (Invis >= 0) {


      circle(location.x, location.y, Invis);
    } else {
      while (i < myObjects.size()) {
        GameObject b = myObjects.get(i);
        if (b instanceof Asteroid ) {
          ShipBoomAsteroids( b);
        }
        if (b instanceof Ship ) {
         ShipBoomBullet ( b);
        }
        i++;
      }
    }
  }

  void ShipBoomBullet(GameObject b) {

    if (dist(location.x, location.y, b.location.x, b.location.y)<=size/2 + b.size/2) {

      lives = lives - 1;
      Invis = 120;
      b.lives = 0;

      if (lives == 0) {
        mode   = gameover;
      }
    }
  }

  void ShipBoomAsteroids(GameObject b) {

    if (dist(location.x, location.y, b.location.x, b.location.y)<=size/2 + b.size/2) {

      lives = lives - 1;
      Invis = 120;
      b.lives = 0;

      if (lives == 0) {
        mode   = gameover;
      }
    }
  }
}
