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
  bob.show();
}

public void keyPressed(){
  if(keyCode == RIGHT){
    bob.turn(30);
  }
  if(keyCode == LEFT){
    bob.turn(-30);
  }
  if(keyCode == UP){
    bob.accelerate(20);
  }
  if(keyCode == DOWN){
    bob.setX(300);
    bob.setY(300);
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
}
