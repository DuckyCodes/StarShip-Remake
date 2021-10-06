boolean upkey, downkey, leftkey, rightkey, spacekey;

Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {
 size(800,800);
 imageMode(CENTER);
 myShip = new Ship();
 myObjects = new ArrayList<GameObject>();
 myObjects.add(myShip);
 myObjects.add(new Asteroid());
 myObjects.add(new Asteroid());
 myObjects.add(new Asteroid());
 
 
}

void draw() {
 background(0);
 


  int i = 0;
 while(i < myObjects.size()){
   GameObject b = myObjects.get(i);
   b.show();
   b.act();
  
  
  if(b.lives == 0) {
    
    myObjects.remove(i);
    
 }else{
   
   i++;
   
 }
 }

}
