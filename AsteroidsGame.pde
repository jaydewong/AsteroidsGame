Spaceship bob = new Spaceship();  //make it a level based game? hit all monsters, then advance 
Star[] stars = new Star[200]; //use get color to collide with asteroids?
Asteroids[] rocks = new Asteroids[5];
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i < stars.length; i++){
     stars[i] = new Star();
   }
  for(int i = 0; i < rocks.length; i++){
     rocks[i] = new Asteroids();
   }
  //your code here
}
public void draw() 
{
  background(0);
  for(int i = 0; i < stars .length; i++){
   stars[i].show();
  }
  for(int i = 0; i < rocks .length; i++){
    rocks[i].setDirectionX((int)(Math.random()*3));
    rocks[i].setDirectionY((int)(Math.random()*3));
    rocks[i].move();     
    rocks[i].show();
  }
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
  if(keyCode == 40){ //down 
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)(Math.random()*600));
    bob.setY((int)(Math.random()*600));
    bob.setPointDirection((int)(Math.random()*360));
  }
}



  
