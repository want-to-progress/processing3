//a lying heart
int r = 300;//diameter of the circle & the length of rectangle

void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(width,height,P3D);
  background(0);
  //set backgroung color
}

void draw(){ 
  
  noStroke();
  translate(width/2,height/2); //change origin from (0,0) to (width/2,height/2)
  fill(#FA0D0D); //red
  
  // main function
  draw_ellipse();
  draw_rectangle(); // heart
}

void draw_ellipse(){
  
  //ellipse(0,-r/2,r,r); //rotate(0)
  
  rotate(-PI/4); // rotate(0 + (-PI/4))
      ellipse(0,-r/2,r,r); //left head
  rotate( PI/4); // rotate(-PI/4 + PI/4) --> rotate(0)
  
  rotate( PI/4); // rotate(0 + PI/4)
      ellipse(0,-r/2,r,r); //right head
  rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
}

void draw_rectangle(){ 
  rectMode(CENTER);
  
  rotate( PI/4); // rotate(0 + PI/4)
      rect(0,0,r,r); //belly
  rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
} 