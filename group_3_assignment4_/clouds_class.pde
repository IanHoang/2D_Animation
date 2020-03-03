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
  
 void check(){
   if (moveX == 50) {
     meatball1_1 = new Ball(color(#8B4513),moveX + 50,100,2,0,35);
   }
   if (moveX == 100) {
     meatball1 = new Ball(color(#8B4513),moveX + 50,100,2,0,35);
   }
   if (moveX == 150) {
     meatball2 = new Ball(color(#8B4513),moveX + 50,100,2,0,35);
   }
   if (moveX == 200) {
     meatball3 = new Ball(color(#8B4513),moveX + 100,100,2,0,35);
   }
   if (moveX == 250) {
     meatball4 = new Ball(color(#8B4513),moveX + 150,100,2,0,35);
   }
   if (moveX == 300) {
     meatball5 = new Ball(color(#8B4513),moveX + 200,100,2,0,35);
   }
   if (moveX == 350) {
     meatball6 = new Ball(color(#8B4513),moveX + 250,100,2,0,35);
   }
   if (moveX == 400) {
     meatball7 = new Ball(color(#8B4513),moveX + 300,100,2,0,35);
   }
  
 }
 void physics_meatballs (){
   if (moveX >= 50) {
    meatball1_1.bounce();
    meatball1_1.display();
    meatball1_1.gravity();
    meatball1_1.move();
  }
   if (moveX >= 100) {
    meatball1.bounce();
    meatball1.display();
    meatball1.gravity();
    meatball1.move();
  }
   if (moveX >= 150) {
    meatball2.bounce();
    meatball2.display();
    meatball2.gravity();
    meatball2.move();
  }
  if (moveX >= 200) {
    meatball3.bounce();
    meatball3.display();
    meatball3.gravity();
    meatball3.move();
  }
  if (moveX >= 250) {
    meatball4.bounce();
    meatball4.display();
    meatball4.gravity();
    meatball4.move();
  }
  if (moveX >= 300) {
    meatball5.bounce();
    meatball5.display();
    meatball5.gravity();
    meatball5.move();
  }
  if (moveX >= 350) {
    meatball6.bounce();
    meatball6.display();
    meatball6.gravity();
    meatball6.move();
  }
  if (moveX >= 400) {
    meatball7.bounce();
    meatball7.display();
    meatball7.gravity();
    meatball7.move();
  }
   
 }
}

  
