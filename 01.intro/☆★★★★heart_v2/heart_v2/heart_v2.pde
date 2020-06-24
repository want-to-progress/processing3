//a standing heart
//a little harder than Version.1
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
  
  draw_arc_1(); // heart
}

void draw_ellipse_1(){ 
  noStroke();
  fill(#FA0D0D); 
  ellipse(width/2,500,165,165); //right head
}

void draw_ellipse_2(){ 
  noStroke();
  fill(#FA0D0D); 
  ellipse((width/2)+(25*sqrt(2))*2,500,165,165); //left head
}

void draw_arc_1(){ 
  noStroke();
  fill(#FA0D0D);
  arc((width/2)+(25*sqrt(2)),(width/2)+(25*sqrt(2))*1.5, 285,285, PI*5/4,PI*7/4,PIE); //belly
}