//------------------------------------
//       PI+HALF_PI
//           |  
//           |
//           |
//PI --------O-----------  0
//           |
//           |
//           |
//       HALF_PI
//------------------------------------
void draw_rectangle(){
  translate((2*width/3),(5*height/6));
    noStroke();
    fill(#F3D9DC); // white
    
    rectMode(CENTER);
    rotate(-PI/4); // rotate(0 + (-PI/4))
      rect(0,0,150,150); //new origin
    rotate( PI/4); // rotate(-PI/4 + PI/4) --> rotate(0)
    
  translate(-(2*width/3),-(5*height/6)); 
  //reset the origin to (0,0) = (2*width/3 + (-2*width/3) , 5*height/6 + (-5*height/6))
}

void draw_ellipse(){
  translate(width/3,(5*height/6));
    noStroke();
    fill(#F3D9DC); // white
    ellipse(0,0,30,30); //new origin
  
    fill(#F5B2B2);//pink
    //rotate(0)
    ellipse(0,-100,120,120); //the position(0,-100) --> (0,-100)+(width/2,height/2)
   
    fill(#351431);//purple
    rotate(-PI/4); // rotate(0 + (-PI/4))
        ellipse(0,-100,120,120); 
    rotate( PI/4); // rotate(-PI/4 + PI/4) --> rotate(0)
  
  translate(-width/3,-(5*height/6)); 
  //reset the origin to (0,0) = (width/3 + (-width/3) , 5*height/6 + (-5*height/6))
}

//----------- page2 ------------
void page_intro_rotate(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("What's rotate()",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("rotate( radian );\nNeed to reset the radian to 0", 20 , 300);
//--------------------------------------------------------------------------------
  draw_ellipse();
  draw_rectangle();
}