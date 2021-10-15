color green = #4BFF05;
color blue = #059DFF;
color yellow = #F6FF0D;
color white = #F9FCF7;
color black = #080101;
color red = #FF190D;
color orange = #FF920D;
color pink = #F7C2D6;
color brown = #602B2B;

int f = 8;
PImage[] gif;
int numberOfFrames;

boolean upkey, downkey, leftkey, rightkey, spacekey;

int mode;
final int intro = 1;
final int gmode = 2;
final int gameover = 3;


Ship myShip;
ArrayList<GameObject> myObjects;

void setup() {

  size(800, 800);
  mode = intro;


  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());

  int j = 0;
  numberOfFrames = 81;
  gif = new PImage[81];
  while (j < numberOfFrames ) {
    gif[j] = loadImage("frame_"+j+"_delay-0.03s.gif");
    j = j + 1;
  }
}
  void draw() {
    background(0);

    if (mode == intro) {
      intro();
    } else if ( mode == gmode ) {
      gmode();
    } else if ( mode == gameover) {
      gameover();
    } else {
      println("Error: Mode = " + mode);
    }


   println(mode);
  }
