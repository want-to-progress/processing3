//a lying heart

//diameter of the circle & the length of rectangle
int r = 300;

void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(width,height,P3D);
  background(0);
  //set backgroung color
}

void draw(){ 
  // main function
  draw_ellipse_1(); // right 
  draw_ellipse_2(); // left 
  
  draw_rectangle_1(); // heart
}

void draw_ellipse_1(){ 
  noStroke();
  fill(#FA0D0D); 
  ellipse(width/2-r/2,height/2,r,r); //right head
}

void draw_ellipse_2(){ 
  noStroke();
  fill(#FA0D0D); 
  ellipse(width/2,height/2-r/2,r,r); //left head
}

void draw_rectangle_1(){ 
  noStroke();
  fill(#FA0D0D);
  rectMode(CENTER);
  rect(width/2,height/2,r,r); //belly
      //the center of the screen
}