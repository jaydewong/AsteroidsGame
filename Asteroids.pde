class Asteroids extends Floater{
  private double rotation;
  public Asteroids(){
    rotation = Math.random();
      if(rotation > 0.5){ rotation = -1; }
      if(rotation < 0.5){ rotation = 1; }
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600); //adding corners causes game crash
    myColor = color(139,132,119);
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
    fill(myColor);   
    stroke(myColor);  
    ellipse(getX(), getY(), 40,40);
  }
}
