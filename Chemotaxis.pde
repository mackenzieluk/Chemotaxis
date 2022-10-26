Bee carl = new Bee();
Bee[] sunnysquare = new Bee[1000];
int x = 150;
void setup () {
  size (500, 500);
  background (0);

  int i = 0;
  while (i<1000) {
    sunnysquare[i] = new Bee();
    i++;
  }
}

void draw () {
  background(0);
  for (int i = 0; i< sunnysquare.length; i++) {
    sunnysquare[i].show();
    sunnysquare[i].walk();
   
}
}

class Bee{

  int myX, myY;
int myColor;
Bee()
{
  myColor=color(255, 255, 0);
  myX = myY = 250;
}
void walk()
{
  //myX = myX + (int)(Math.random ()*7)-3;
  //myY = myY + (int)(Math.random ()*7)-3;
   if (mouseX>myX) //the mouse is on the right side on a bee
      myX=myX+(int)(Math.random()*20)+1;
else
  myX=myX+(int)(Math.random()*-20)+3;
  
  if(myX==0){
    myX=430;
  }
}
void show()
{
  fill(255, 255, 0);
  ellipse (myX, myY, 30, 30);
  fill(0, 0, 0);
  rect((myX-15), myY, 30, 5);
  ellipse((myX-5), (myY-10), 5, 5);
  ellipse((myX+5), (myY-10), 5, 5);
  rect((myX-10), (myY+10), 20, 5);
  //Walker carl;
  //Walker [] shadyacres = {new Walker(), new Walker (), new Walker ()};
  //Walker [] sunnysquare = ;
}
}
