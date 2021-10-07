class Fire extends GameObject{
  
  int t;//transparency
   PVector nudge;
   Fire(){
    lives = 9;
    size = random(3,25);
    t = int(random(200,255));
    //location = new PVector (myShip.
    location = myShip.location.copy();
    nudge = myShip.direction.copy();
    nudge.rotate(PI);
    nudge.setMag(30);
    location.add(nudge);
    velocity = myShip.direction.copy();
    velocity.rotate(PI+random(-0.5, 1));//180 deree
    velocity.setMag(5);   
 }
   
   void show(){
     noStroke();
     fill(255,0,0,t);
     circle(location.x, location.y, size); 
   }
   
   void act(){
     super.act();
     t = t - 5;
     if(t<= 0) lives = 0;
   }
  
  
}
