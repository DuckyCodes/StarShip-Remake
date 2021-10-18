/*class UFO extends GameObject {
  PVector direction;
  int shotTimer, threshold;
  UFO(float x, float y, float dx, float dy) {
    lives = 1;
    location = new PVector(x, y);
    direction = new PVector(dx, dy);
    velocity = new PVector(direction.x*10, direction.y*10);
    shotTimer =0;
    threshold=20;
    size=69;
  }
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate(direction.heading());
    stroke(white);
    fill(pink);
    circle(0, 0, size);
    noFill();
    stroke(255);
    circle(0, 0, 10);

    popMatrix();
  }
  void act() {
    location.add(velocity);
    if (location.y<-50)
      location.y =height+50;
    if (location.y>height+50)
      location.y=-50;
    if (location.x<-50)
      location.x=width+50;
    if (location.x>width+50)
      location.x=-50;
    shotTimer++;
    if (shotTimer>=threshold) {
      myObjects.add(new UFOBullet());
      shotTimer=0;
    }
    if (myUFO.location.x>=width+20||myUFO.location.x<=-20||myUFO.location.y>=height+20||myUFO.location.y<=-20) {
      lives--;
      ifUFO=true;
    }
    for (int i=0; i<myObjects.size(); i++) {
      GameObject b = myObjects.get(i);
      if (b instanceof Bullet) {
        if (dist(location.x, location.y, b.location.x, b.location.y)<=size/2 + b.size) {
          ifUFODie=true;
          lives--;
          b.lives--;
          for (int c=0; c<30; c++)
            myObjects.add(new AsteroidParticles(location.x, location.y,#D8B423));
        }
      }
    }
  }
}
