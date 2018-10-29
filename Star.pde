class Star 
{
  private int myX;
  private int myY;
  private int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  Star(int x, int y){
    myX = x;
    myY = y;
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse(myX,myY, 20,20);

  }
