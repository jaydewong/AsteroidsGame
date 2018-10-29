Spaceship bob = new Spaceship();
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
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
  if(keyCode == 38){ //up key
    bob.accelerate(0.1);
  }
  if(keyCode == 40){ //down //FIGURE OUT: new randomized position every time instead of one, how to make it stop
   // bob.setDirectionX(10);
   // bob.setDirectionY(10);
    bob.accelerate(0);
    bob.setX((int)Math.random()*600);
    bob.setY((int)Math.random()*600);
    bob.setPointDirection((int)Math.random()*360);
  }
  
}
