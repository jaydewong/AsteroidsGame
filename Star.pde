class Star 
{
  private int myX;
  private int myY;
  private int myColor = color(255);
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse(myX,myY, 2,2);

  }
}
