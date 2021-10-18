class Particle extends GameObject{
  
  int t;//transparency
   PVector nudge;
  
   Particle(int r, float x, float y, float s){
    lives = 9;
    size = s;
    t = int(random(200,255));
    
    //location = new PVector (myShip.
    
    location = new PVector(x,y);
    
    velocity = new PVector(0,1);
    velocity.rotate(r);//180 deree
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
