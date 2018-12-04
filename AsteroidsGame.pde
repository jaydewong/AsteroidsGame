Spaceship bob = new Spaceship();  //make it a level based game? hit all monsters, then advance 
Star[] stars = new Star[200]; //use get color to collide with asteroids?
ArrayList <Asteroids> rocks = new ArrayList <Asteroids>();
ArrayList <Bullet> bullets = new ArrayList <Bullet>();
boolean fire;
int sum = 0; 
int health = 100;
float d;
//your variable declarations here
public void setup() 
{
  size(600,600);
  background(0);
  for(int i = 0; i < stars.length; i++){
     stars[i] = new Star();
   }
  for(int i = 0; i < 10 ; i++){
     rocks.add(new Asteroids());
   }
  //your code here
}
public void draw() 
{
  background(0);
  fill(255);
  textSize(20);
  text("Ship health: " + health, 20,30);
  for(int i = 0; i < stars .length; i++){
   stars[i].show();
  }    
  asteroidMove();
  shoot();
  bob.move();
  bob.show();
  shot();
  
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
  if(key == 'b'){
    bullets.add(new Bullet(bob)); 
    fire = true;
  }
}

public void shot(){
  for(int i = 0; i< bullets.size(); i++){ //size always increasing??
    for(int j = 0; j < rocks.size(); j++){
      if(dist(rocks.get(j).getX(), rocks.get(j).getY(), bullets.get(i).getX(), bullets.get(i).getY())<25){
        rocks.remove(j);
        bullets.remove(i);
        break;
     }
  }
}
}

public void asteroidMove(){
  for(int i = 0; i < rocks.size(); i++){ 
    rocks.get(i).move();     
    rocks.get(i).show();
    d = dist((float)rocks.get(i).getX(), (float)rocks.get(i).getY(), (float)bob.getX(), (float)bob.getY());
    if(d <15){
      health = health - 10;
      rocks.remove(rocks.get(i));
      i=0;
    }
  }  
  
}

public void shoot(){
  if(fire == true){
    for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).move(); //need to make it i
    bullets.get(i).show();
    
    }
  }
}



  
