//----------------------------
//*****************//
//draw a triangle
//*****************//
void draw_triangle(){
  //--------------------------------------
  //***********//
  //about frame
  //***********//
  stroke(#2E5077);       //frame color
  strokeWeight(10);      //frame thinkness
  //or use 
  //noStroke(); //no frame
  //--------------------------------------
  //****************************//
  //triangle(x1,y1,x2,y2,x3,y3);
  //****************************//

  fill(#EDE31D); // set triangle color
  //if want to implement transparent color try
  //fill(#EDE31D,80); //80/255 left
  //if you don't want to fill color, try
  //noFill();
  
  triangle(500,400,300,700,700,700); //triangle function
}
//------------------------------

//----------- page5 ------------
void page_intro_T(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw Triangle",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("triangle(x1,y1,x2,y2,x3,y3);", 20 , 300);
//--------------------------------------------------------------------------------
  draw_triangle();
}