PImage cloud;
PImage cloud2;
PImage cloud3;
PImage cloud4;

int moveX;
void setup() {
  size(500, 500);
  cloud = loadImage("cloud.png");
  cloud2 = loadImage("cloud.png");
  cloud3 = loadImage("cloud.png");
  cloud4 = loadImage("cloud.png");
  
  cloud();
  moveX = 0;
}

void draw(){
  moveX++;
  background(250);
  cloud();
}
void cloud() {

  cloud.resize(0,80);
  image(cloud, moveX, 50);
  
  cloud2.resize(0,80);
  image(cloud2, moveX + 50, 50);

  cloud3.resize(0,80);
  image(cloud3, moveX + 100, 50);
  
  cloud4.resize(0,80);
  image(cloud4, moveX + 150, 50);


  if (moveX == width+100)
  moveX=-100;
  
  

}
