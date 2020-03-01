Tree tree = new Tree(200, 200, 280, 280, 100, 120, 100, 120);
Tree tree2 = new Tree(350, 350, 430, 430, 200, 220, 200, 220);
Tree tree3 = new Tree(275, 275, 355, 355, 300, 320, 300, 320);
Tree tree4 = new Tree(250, 250, 330, 330, 500, 520, 500, 520);
Tree tree5 = new Tree(325, 325, 405, 405, 620, 640, 620, 640);
Tree tree6 = new Tree(220, 220, 300, 300, 700, 720, 700, 720);
Tree tree7 = new Tree(365, 365, 445, 445, 420, 440, 420, 440);
float rotateVal = 0.0;
Ball meatball;

PImage cloud;
PImage cloud2;
PImage cloud3;
PImage cloud4;
Clouds c = new Clouds();

int moveX;
void setup() {
  size(840, 480);
  cloud = loadImage("cloud.png");
  cloud2 = loadImage("cloud.png");
  cloud3 = loadImage("cloud.png");
  cloud4 = loadImage("cloud.png");
  meatball = new Ball(color(#8B4513),moveX,100,2,0,20);
  
  c.cloud();
  moveX = 0;
}

void draw(){
  moveX++;
  
  background(250);
  background(155);
  noStroke();
  fill(54, 68, 133);
  rect(0, 0, 840, 280);
  fill(110, 145, 34);
  rect(0, 280, 840, 200);
  noFill();
  stroke(1);
  
  //Meatballs
  
  meatball.bounce();
  meatball.display();
  meatball.gravity();
  meatball.move();
  
  //Clouds
  c.cloud();
  
  //Trees
  rotateVal += 0.00015;
  rotate(rotateVal);
  tree.update();
  tree2.update();
  tree3.update();
  tree4.update();
  tree5.update();
  tree6.update();
  tree7.update();
  
}

class Clouds {
  void cloud() {
  
    cloud.resize(0,100);
    image(cloud, moveX, 50);
    
    cloud2.resize(0,100);
    image(cloud2, moveX + 70, 50);
  
    cloud3.resize(0,100);
    image(cloud3, moveX + 140, 50);
    
    cloud4.resize(0,100);
    image(cloud4, moveX + 210, 50);
  
  }
  
   //void check() {
   // if (moveX == width+100) {
   //   moveX=-210;
   //   return true;
   // }
  }
   


class Tree{
  float top1y, top2y, bottomy3, bottomy4, topx1, topx2, bottomx3, bottomx4;
  Tree(float y1, float y2, float y3, float y4, float x1, float x2, float x3, float x4){
      top1y = y1;
      top2y = y2;
      bottomy3 = y3;
      bottomy4 = y4;
      topx1 = x1;
      topx2 = x2;
      bottomx3 = x3;
      bottomx4 = x4;     
  }
  
  void update (){
    noStroke();
    fill(138, 89, 24);
    quad(topx1, top1y, bottomx3, bottomy3, bottomx4, bottomy4, topx2, top2y);
    fill(62, 82, 8);
    ellipse((topx1+((topx2 - topx1)/2)), top1y, 50, 50);
    noFill();
    stroke(1);
    
  } 
}

class Ball {
  
  color c;
  float xpos;
  float ypos;
  float yspeed;
  float xspeed;
  float size;
  float yacc;
  float ydir; 
  float xdir;
  
  Ball(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempYspeed, float tempSize) { 
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    yspeed = tempYspeed;
    size = tempSize;
    yacc = .1;
    ydir = 1; 
    xspeed = tempXspeed;
    xdir = 1;
  }

  void display() {  
    ellipseMode(CENTER);
    fill(c);
    ellipse(xpos,ypos,size,size);
  }
  
  void gravity() { 
    yspeed = yacc + yspeed*ydir;
  }
  
  void bounce() {
    ypos = ypos + yspeed*ydir;
    if (ypos > height - size/2 || ypos < 0 + size/2) {
       ypos = height -size/2;
       ydir *= -.999;
    }
  }
  
  void move() {
    xpos = xpos + xspeed*xdir;
    if(xpos > width - size/2) {
      xdir = -1;
    }
    
    if(xpos < 0 + size/2) {
      xdir = 1;
    }
  }
    
}
