Tree tree = new Tree(200, 200);

float rotateVal = 0.0;
public void settings(){
  size(840, 480);
}

void draw(){
  rotateVal += 0.001;
  background(155);
  noStroke();
  fill(54, 68, 133);
  rect(0, 0, 840, 280);
  fill(110, 145, 34);
  rect(0, 280, 840, 200);
  noFill();
  stroke(1);
  rotate(rotateVal);
  tree.update();
  
}

class Tree{
  float top1y, top2y;
  Tree(float x, float y){
      top1y = x;
      top2y = y;
  }
  float topy3 = 280;
  float topy4 = 280;
  float top1x = 100;
  float top2x = 120;
  float topx3 = 100;
  float topx4 = 120;
  
  void update (){
    noStroke();
    fill(138, 89, 24);
    quad(top1x, top1y, topx3, topy3, topx4, topy4, top2x, top2y);
    fill(62, 82, 8);
    ellipse((top1x+((top2x - top1x)/2)), top1y, 50, 50);
    noFill();
    stroke(1);
    
  } 
}
