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
