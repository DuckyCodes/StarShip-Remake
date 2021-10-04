class Ship{
 //1.Instance Variables
 int lives;
 PVector location;
 PVector velocity;
 PVector direction;
 
  //2. constructor(S)
  Ship(){
    lives = 3;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    direction = new PVector(0, -0.1);
  
}

 
 void show(){
  pushMatrix();
  translate(location.x, location.y);
  rotate(direction.heading());
  noFill();
  stroke(255);
  triangle(-25, -25, -25, 12.5, 25 , 0);
  popMatrix();
   
   
 }
 
 void act() {
   location.add(velocity);
   
   if(upkey) velocity.add(direction);
   if(downkey) velocity.sub(direction);
   if(leftkey) direction.rotate(-radians(5) );
   if(rightkey) direction.rotate(radians(5) );
   if(spacekey) myBullets.add(new Bullet());
   
   if(location.y < -50) location.y = height+50;
   if(location.y > height+50) location.y = -50;
   if(location.x < -50) location.x = width+50;
   if(location.x > width+50) location.x = -50;
   
 }
}
