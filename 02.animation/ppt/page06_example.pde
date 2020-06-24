int time = 0;
int addition = 1;
float addition_trans = 0.5;
float trans = 20;
//----------- page5 ------------
void example(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(120);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Example",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Draw an animation", 20 , 300);
//-------------------------------------------------------------------------------  
  //***************//
  //heart animation
  //***************//
  if(time > 1000 || time < 0) addition = -addition;
  if(trans > 20 || trans < 0) addition_trans = -addition_trans;
  time += addition;
  trans -= addition_trans;
  heart_1();
  //-------
  draw_body(); 
  draw_head(); 
  //-------
}

void heart_1(){
  translate(1000,180);
    int r = 50;
    noStroke();
    fill(#FA0D0D);
    ellipse(0 -r/2 -time/5, 0      -10*sin(time/10), r, r);
    ellipse(0      -time/5, 0 -r/2 -10*sin(time/10), r, r);
    rectMode(CENTER);
    rect(   0      -time/5, 0      -10*sin(time/10), r, r);
  translate(-1000,-180);
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
  stroke(120);
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