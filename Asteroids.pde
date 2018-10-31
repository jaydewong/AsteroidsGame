class Asteroids extends Floater{
  public Asteroids(){
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
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
  
  public void show(){
    fill(139,132,119);
    ellipse((float)myCenterX, (float)myCenterY, 40,40);
  }
  
}
