//----------------------------
//*****************//
//draw a rectangle
//*****************//
void draw_rectangle(){
  //--------------------------------------
  //***********//
  //about frame
  //***********//
  stroke(#2E5077);       //frame color
  strokeWeight(10);      //frame thinkness
  //or use 
  //noStroke(); //no frame
  //--------------------------------------
  //***************************//
  //rect(x,y,  width,height);
  //***************************//
  rectMode(CENTER);
  //(x,y)is the center of the rectangle
  
  fill(#EDE31D); // set rectangle color
  //if want to implement transparent color try
  //fill(#EDE31D,80); //80/255 left
  //if you don't want to fill color, try
  //noFill();
  
  rect(400,500,600,100); //rectangle function
}
//------------------------------

//----------- page3 ------------
void page_intro_R(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw Rectangle",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("rect(x,y, width,height);", 20 , 300);
//--------------------------------------------------------------------------------
  draw_rectangle();
}