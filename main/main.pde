Tree tree = new Tree(200, 200, 280, 280, 100, 120, 100, 120);
Tree tree2 = new Tree(350, 350, 430, 430, 200, 220, 200, 220);
Tree tree3 = new Tree(275, 275, 355, 355, 300, 320, 300, 320);
Tree tree4 = new Tree(250, 250, 330, 330, 500, 520, 500, 520);
Tree tree5 = new Tree(325, 325, 405, 405, 620, 640, 620, 640);
Tree tree6 = new Tree(220, 220, 300, 300, 700, 720, 700, 720);
Tree tree7 = new Tree(365, 365, 445, 445, 420, 440, 420, 440);

float rotateVal = 0.0;
Ball meatball;
Ball meatball2;
PImage cloud;
PImage cloud2;
PImage cloud3;
PImage cloud4;
Clouds c = new Clouds();

int moveX;
int moveMB; 
void setup() {
  size(840, 480);
  cloud = loadImage("cloud.png");
  cloud2 = loadImage("cloud.png");
  cloud3 = loadImage("cloud.png");
  cloud4 = loadImage("cloud.png");
  meatball = new Ball(color(#8B4513),moveX,100,2,0,20);
  meatball2 = new Ball(color(#8B4513),moveMB,100,2,0,20);
  
  
  c.cloud();
  moveX = 0;
  moveMB = moveX;
}

void draw(){
  moveX++;
  moveMB = moveX;
  
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
  
  meatball2.bounce();
  meatball2.display();
  meatball2.gravity();
  meatball2.move();
  //Clouds
  c.cloud();
  if (moveX == width){
    moveX = -100;
  }
  
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
