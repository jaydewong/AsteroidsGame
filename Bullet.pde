class Bullet extends Floater{
  double dRadians;
  public Bullet(Spaceship theShip){
    dRadians = myPointDirection*(Math.PI/180);
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY(); 
  }
   public void show () 
  {             
    fill(249,53,250);   
    stroke(249,53,250);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }  
  
  public void move(){
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;
    if(myCenterX <= 0 || myCenterX >= 600){
      //fire = false;
      myCenterX = bob.getX();
    }
    if(myCenterY <= 0 || myCenterY >= 600){
      //fire = false;
      myCenterY = bob.getY();
    }
  }
 
  
  public void setX(int x){myCenterX = x;}  
  public int getX(){return (int)myCenterX;}   
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
  
  
   
}
