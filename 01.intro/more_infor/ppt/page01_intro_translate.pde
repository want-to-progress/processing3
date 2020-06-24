//----------- page1 ------------
void page_intro_translate(){
  background(0);
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("What's translate()",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("translate(new_X,new_Y);\nChange the origin from (0,0)\nto (new_X,new_Y)\nnew_X: new_originX\nnew_Y: new_originY", 20 , 300);
}