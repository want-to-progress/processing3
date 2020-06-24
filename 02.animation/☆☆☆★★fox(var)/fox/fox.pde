int trans = 20;
              int diff =1;
//make trans change between [0,20] in draw function to make a animation
//Hint: draw() is a big loop

void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(width,height,P3D);
  background(0);
  //set backgroung color
}

void draw(){ 
  // main function
  draw_body(); 
  draw_head(); 
  
  //make trans change HERE!
  if(trans>20||trans<0) {
    diff = -diff;
    trans += diff;
  }
  else trans += diff;
}

void draw_head(){
  draw_ear();
  draw_face();
}

void draw_face(){
  //------------------------------------------------------------------
  noStroke();
  fill(#F29720);
  ellipse(600,500+60, 200,120);//face
  //------------------------------------------------------------------
  fill(0);
  ellipse(600-30,500+80, 20,20);//nose
  //------------------------------------------------------------------
  stroke(0);
  strokeWeight(2);
  fill(255);
  ellipse(600-30-5 ,500+40, 20,20);//eye
  ellipse(600-30+45,500+40, 20,20);//eye
  //------------------------------------------------------------------
  noStroke();
  fill(0);
  ellipse(600-30-5 ,500+40+2, 7,10);//pupil
  ellipse(600-30+45,500+40+2, 7,10);//pupil
  //------------------------------------------------------------------
  fill(#F29720);
  //fill(255);
  ellipse(600-30-5 ,500+40-trans, 20,20);//eyelid
  ellipse(600-30+45,500+40-trans, 20,20);//eyelid
  //------------------------------------------------------------------
}
void draw_ear(){
  stroke(#F29720);
  strokeWeight(5);
  fill(255);
  triangle(600-30-50,500+80, 600+30-50,500   , 600-50,500-60); // left
  triangle(600-30+50,500   , 600+30+50,500+80, 600+50,500-60); // right
        //| down left       | down right       | upper       
}

void draw_body(){
  draw_belly();
  draw_tail();
  draw_leg();
}

void draw_belly(){
  noStroke();
  fill(#F29720);
  rectMode(CENTER);
  //rect(600,600, 100,200, 50,50,50,0); //neck
  //rect(X,Y,width,height,r1,r2,r3,r4)
  // r1 --------r2
  // |           |
  // |           |
  // |           |
  // r4 ------- r3
  rect(720,650, 260,120, 0,50,50,50); //belly
  fill(255);
  triangle(590,590   , 590,590+80, 630,590); // chest
}

void draw_tail(){
  noStroke();
  //-----------
  fill(255);
  ellipse(890,670,35,35);
  rectMode(CENTER);
  translate(900,676);//change origin to (900,620)
    rotate(-PI/8);
      rect(-6,0, 40,40, 0,40,40,16); //tail(white)
      triangle(8,0-20, -6,0+22, 60,-4); //tail(white)
      triangle(8,0-20-2, -6,0+22-2, 60,-4-2); //tail(white)
    rotate(PI/8);//reset
  translate(-900,-676);//reset
  //-----------
  fill(#F29720);
  rectMode(CENTER);
  translate(900,680);//change origin to (900,620)
    rotate(PI/4);
      rect(-40,10, 100,36, 0,40,40,10); //tail
    rotate(-PI/4);//reset
  translate(-900,-680);//reset
}

void draw_leg(){
  noStroke();
  fill(#F29720);
  rectMode(CENTER);
  rect(630,720, 30,70, 0,20,20,20); 
  rect(680,720, 30,70, 0,20,20,20);
  rect(760,720, 30,70, 0,20,20,20);
  rect(810,720, 30,70, 0,20,20,20);
  
  fill(255);
  rect(630,770, 30,60, 0,20,20,20); 
  rect(680,770, 30,60, 0,20,20,20);
  rect(760,770, 30,60, 0,20,20,20);
  rect(810,770, 30,60, 0,20,20,20);
}