//----------------------------
//*****************//
//set text
//*****************//
void set_text(){
  //no frame
  //--------------------------------------
  //****************************//
  //text(string,x,y);
  //x,y are the left-top point
  //****************************//
  textSize(100);  //set the text font
  fill(#EDE31D); // set text color
  //if want to implement transparent color try
  //fill(#EDE31D,80); //80/255 left
  //if you don't want to fill color, try
  //noFill();
  
  text("type somthing", 100 , 600); //text function
}
//------------------------------

//----------- page6 ------------
void page_intro_text(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Using text",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("text(string,x,y);", 20 , 300);
//--------------------------------------------------------------------------------
  set_text();
}