Spaceship bob = new Spaceship();
//your variable declarations here
public void setup() 
{
  size(600,600);
  
  //your code here
}
public void draw() 
{
  background(0);
  bob.move();
  bob.show();
}

public void keyPressed(){
  if(keyCode == RIGHT){
    bob.turn(20);
  }
  if(keyCode == LEFT){
    bob.turn(-20);
  }
  if(key == UP){
    bob.accelerate(1);
  }
  
}
