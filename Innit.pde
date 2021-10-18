void init(){
mode = intro;
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
  time = 10;
  timer = 0;
  culdown = 100;
  int j = 0;
}
