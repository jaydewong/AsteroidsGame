class Spaceship extends Floater  
{ 
  int myX, myY, mySpeed, myDirection, corners, myColor;
  int [] xCorners, yCorners;
  double myCenterX, myCenterY, myDirectionX, myDirectionY, myPointDirection;
  
  public Spaceship{ // contructor
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = -8;
    xCorners[1] = 8;
    xCorners[2] = 16;
    yCorners[2] = 0;
    xCorners[3] = -2;
    yCorners[3] = 0;
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return myCenterX}
  public void setY(int y){myCenterY = y;}
  public int getY(){return myCenterY;}
  
  public void setDirection(double x){myDirectionX = x;}
  public double getDirectionX(double x){return myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return myPointDirection;}
  
  public void move(){
    //moves towards myDirectionX and myDirectionY
    myCenterX += myDirectionX;
    myCenterY += myDirectionY;
    
    //wrap around screen
    if(myCenterX > width){
      myCenterX = 0
    }
    else if(myCenterX < 0){
      myCenterX = width;
    } 
    if(myCenterY > height){
      myCenterY = 0;
    } else if(myCenterY < 0){
      myCenterY = height;
    }
  }
  
  public void accelerate (double dAmount){
    // accelerates ship in direction of pointer
    double dRadians = myPointDirection*(Math.PI/180);
    //change coordinates of travel direction
    myDirectionX += ((dAmount) * Math.cos(dRadians));
    myDirectionY += ((dAmount) * Math.sin(dRadians));
  }
  
  public void turn (int nDegreesOfRotation){
    myPointDirection += nDegreesOfRotation;
  }
  
  
    
  }
    
}
