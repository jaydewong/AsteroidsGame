class Asteroids extends Floater{
  private double rotSpeed;
  public Asteroids(){
    rotSpeed = Math.random();
      if(rotSpeed > 0.5){ rotSpeed = -1; }
      if(rotSpeed < 0.5){ rotSpeed = 1; }
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600); //adding corners causes game crash
    myColor = color(139,132,119);
    corners = 6;
    int[] xS = {-11, 7, 13, 6, -11, -5};
    int[] yS = {-8, -8, 0, 10, 8, 0};
    xCorners = xS;
    yCorners = yS;
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;  }
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x; }  
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  
  public void move(){
    turn((int) rotSpeed);
    super.move();
  }
  
}
