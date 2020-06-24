//form a star -- being simplified
//using the techique of overlapping

void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(width,height,P3D);
  background(0);
  //set backgroung color
}

void draw(){ 
  //for frame
  noStroke(); // all the patterns are no stroke 
  
  //for patterns
  
  //center rectangle 
  fill(#FCF103); //yellow
  rectMode(CENTER);
  rect(width/2,height/2,200,200); // W = 200 , H = 200
  
  //four circle 
  fill(0);
  ellipse(width/2-100,height/2-100,198,198); // r = 99
  ellipse(width/2-100,height/2+100,198,198);
  ellipse(width/2+100,height/2-100,198,198);
  ellipse(width/2+100,height/2+100,198,198);
}