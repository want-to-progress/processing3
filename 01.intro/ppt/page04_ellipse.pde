//----------------------------
//*****************//
//draw a ellipse
//*****************//
void draw_ellipse(){
  //--------------------------------------
  //***********//
  //about frame
  //***********//
  stroke(#2E5077);       //frame color
  strokeWeight(10);      //frame thinkness
  //or use 
  //noStroke(); //no frame
  //--------------------------------------
  //*******************//
  //ellipse(x,y, a, b);
  //*******************//
  //(x,y)is the center of the ellipse
  
  fill(#EDE31D); // set ellipse color
  //if want to implement transparent color try
  //fill(#EDE31D,80); //80/255 left
  //if you don't want to fill color, try
  //noFill();
  
  ellipse(1000,500,200,500); //ellipse function
}
//------------------------------

//----------- page4 ------------
void page_intro_E(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw Ellipse",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("ellipse(x,y, a, b);\na:major axes\nb:minor axes", 20 , 300);
//--------------------------------------------------------------------------------
  draw_ellipse();
}