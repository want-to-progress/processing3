//--------------------------------------------
//*****************//
//change font size
//*****************//
//toolbar --> File --> preference 
//        --> Editor font size (at line 5)
//--------------------------------------------
void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(length,height,P3D);
  background(#ED1C24);
  //set backgroung color
}

void draw(){ 
  // main function
  draw_ellipse_1(); // right head
  draw_ellipse_2(); // left head
  
  draw_rectangle_1(); // head
  draw_rectangle_2(); // body
  
  draw_rectangle_3(); // hair
  draw_rectangle_4(); // hair
  draw_rectangle_5(); // hair
  
  draw_triangle_1();  //peak
  
  draw_arc_1();       //belly
  
  draw_rectangle_6(); // lower eyelid (left)
  draw_rectangle_7(); // lower eyelid (right)
  draw_rectangle_8(); // lower eyelid (left)
  draw_rectangle_9(); // lower eyelid (right)
}

void draw_ellipse_1(){ 
  noStroke();
  fill(#2C3A90); 
  ellipse(400-100,500,200,200); //right head
}

void draw_ellipse_2(){ 
  noStroke();
  fill(#2C3A90); 
  ellipse(400+100,500,200,200); //left head
}

void draw_rectangle_1(){ 
  noStroke();
  fill(#2C3A90); 
  rectMode(CENTER);
  rect(400,500,200,200);  //head
}

void draw_rectangle_2(){ 
  noStroke();
  fill(#2C3A90); 
  rectMode(CENTER);
  rect(400,650,400,300);  //body
}

void draw_rectangle_3(){ 
  noStroke();
  fill(#2C3A90); 
  rectMode(CENTER);
  rect(400,400,10,80);    //hair
}

void draw_rectangle_4(){ 
  noStroke();
  fill(#2C3A90); 
  rectMode(CENTER);
  rect(400-30,400,10,60);    //hair
}

void draw_rectangle_5(){ 
  noStroke();
  fill(#2C3A90); 
  rectMode(CENTER);
  rect(400+30,400,10,70);    //hair
}

void draw_triangle_1(){ 
  noStroke();
  fill(#DEF534); 
  triangle(400,500,400-80,500+100,400+80,500+100); //peak
}

void draw_arc_1(){ 
  noStroke();
  fill(255);
  arc(400,800, 200,200, PI,2*PI,PIE); //belly
}

void draw_rectangle_6(){ 
  noStroke();
  fill(255); 
  rectMode(CENTER);
  rect(400-100,500+50,100,20); //lower eyelid
}

void draw_rectangle_7(){ 
  noStroke();
  fill(255); 
  rectMode(CENTER);
  rect(400+100,500+50,100,20); //lower eyelid
}

void draw_rectangle_8(){ 
  noStroke();
  fill(255); 
  rectMode(CENTER);
  rect(400-100,500+20,100,20); //upper eyelid
}

void draw_rectangle_9(){ 
  noStroke();
  fill(255); 
  rectMode(CENTER);
  rect(400+100,500+20,100,20); //upper eyelid
}