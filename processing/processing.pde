boolean upkey, downkey, leftkey, rightkey, spacekey;

int mode;
final int intro = 1;
final int gmode = 2;
final int gameover = 3;


Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {
  
 size(800,800);
 mode = intro;
 
 
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
 
 if(mode == intro) {
    intro();
  } else if ( mode == gmode ){
    gmode();
  } else if ( mode == gameover){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }


  int i = 0;
 while(i < myObjects.size()){
   GameObject b = myObjects.get(i);
   b.show();
   b.act();
  
  
  if(b.lives == 0) {
    println("she");
    myObjects.remove(i);
    
 }else{
   
   i++;
   
 }
 }

}
