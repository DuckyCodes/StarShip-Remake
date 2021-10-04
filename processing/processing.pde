boolean upkey, downkey, leftkey, rightkey, spacekey;

Ship myShip;
ArrayList<Bullet> myBullets;

void setup() {
 size(800,800);
 imageMode(CENTER);
 myShip = new Ship();
 myBullets = new ArrayList<Bullet>();
 
 int i = 0;
 while(i < myBullets.size()){
   Bullet b = myBullets.get(i);
   b.show();
   b.act();
  i++; 
 }
}

void draw() {
 background(0);
 myShip.show();
 myShip.act();
}
