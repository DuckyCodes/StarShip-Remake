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
int numberOfFrames, time, timer, AsteriodsCount;

int culdown;
boolean upkey, downkey, leftkey, rightkey, spacekey, win, tkey, rkey, tp, liveUFO, deadUFO, culdownword;


int mode;
final int intro = 1;
final int gmode = 3;
final int gameover =5 ;
final int pause = 4;
final int intro2mode = 2;

UFO myUFO;
Ship myShip;
ArrayList<GameObject> myObjects;

PFont font;

void setup() {

  size(800, 800);



  imageMode(CENTER);
  myShip = new Ship();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());

  font = createFont("Chernobyl.otf", 50);
  textFont(font);
  liveUFO=true;
  deadUFO = false;
  
  AsteriodsCount = 0;
  time = 1000;
  timer = 0;
  culdown = 100;
  int j = 0;
  numberOfFrames = 81;
  gif = new PImage[81];
  while (j < numberOfFrames ) {
    gif[j] = loadImage("frame_"+j+"_delay-0.03s.gif");
    j = j + 1;
  }

  mode = intro;
}



void draw() {
  background(0);

  if (mode == intro) {
    intro();
  //} else if ( mode == intro2mode ) {
    //intro2mode();
  } else if ( mode == gmode ) {
    gmode();
  } else if ( mode == pause ) {
    pause();
  } else if ( mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }


  println(mode);
}
