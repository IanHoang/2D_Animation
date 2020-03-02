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
