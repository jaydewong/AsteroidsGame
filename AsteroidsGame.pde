Spaceship bob = new Spaceship();
Star[] stars = new Star[200];
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i < stars.length; i++){
     stars[i] = new Star();
   }
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars .length; i++){
   stars[i].show();
  }
  bob.move();
  bob.show();
}

public void keyPressed(){
  int newSpot = (int)(Math.random()*600); 
  int newSpot2 = (int)(Math.random()*600);
  
  if(keyCode == RIGHT){
    bob.turn(20);
  }
  if(keyCode == LEFT){
    bob.turn(-20);
  }
  if(keyCode == 38){ //up key
    bob.accelerate(0.1);
  }
  if(keyCode == 40){ //down //FIGURE OUT:  how to make it stop
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX(newSpot);
    bob.setY(newSpot2);
    bob.setPointDirection((int)(Math.random()*360));
  }
  
}
