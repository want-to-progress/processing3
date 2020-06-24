//----------- page2 ------------
void intro(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(120);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Library",width/20,120);
  textSize(65);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("import processing.serial.*", 20 , 220);
  
  textSize(120);  //set the text font
  fill(#F1D302);
  text("Serial",width/20,350);
  textSize(65);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Connect microbit to processing", 20 , 450);
  
  textSize(120);  //set the text font
  fill(#F1D302);
  text("Object",width/20,580);
  textSize(65);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("1.concrete(You can see and use it)\n2.Same object shares alike properties", 20 , 680);
//--------------------------------------------------------------------------------
}