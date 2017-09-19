void setup()
{
  size (400, 400);
  noLoop();
  background(167,163,237);
}
void draw()
{
  int total = 0;
  for (int y = 12; y < 375; y+= 65)
  { 
    for (int x = 12; x < 375; x+= 65)
    {
      Die dan = new Die(x, y);
      dan.show();
      total = total + dan.num;
    }
  }
  fill(167,163,237);
  rect(160,195,80,10);
  fill(30,75,232);
  text ("Total roll:" + total,160,205);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int num, myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    noStroke();
    fill(255);
    rect(myX, myY, 50, 50,15);
    fill(144,31,65);
    if (num < 2)
      ellipse(myX+25, myY+25, 10, 10);
    else if (num < 3)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
    } 
    else if (num < 4)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    } 
    else if (num < 5)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
    } 
    else if (num < 6)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+25, myY+25, 10, 10);
    }
    else if (num < 7)
    {
      ellipse(myX+40, myY+10, 10, 10);
      ellipse(myX+10, myY+40, 10, 10);
      ellipse(myX+10, myY+10, 10, 10);
      ellipse(myX+40, myY+40, 10, 10);
      ellipse(myX+10, myY+25, 10, 10);
      ellipse(myX+40, myY+25, 10, 10);
    }
  }
}