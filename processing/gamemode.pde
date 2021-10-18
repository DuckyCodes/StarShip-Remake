void gmode() {


  int i = 0;
  while (i < myObjects.size()) {
    GameObject b = myObjects.get(i);
    b.show();
    b.act();


    if (b.lives == 0) {
      //println("she");
      myObjects.remove(i);
    } else {

      i++;
    }
  }
  
 
 
}
