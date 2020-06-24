//----------------------------
//***************//
//color selector
//***************//
//tool bar --> color selector
//select the color and copy the color code
//----------------------------
//***************//
//draw a line
//***************//
void draw_line(){
  stroke(#2E5077);       //line color
  strokeWeight(10);      //line thinkness
  //line(x1,y1,  x2,y2);
  line(400,400,600,600); //line function
}
//------------------------------
//*************************//
//How to code in processing
//*************************//
/*
void setup(){ 
  //set up screen size
  size(1200,800 , P3D);  
  //size(width,height,P3D);
  background(#EDE31D);
  //set backgroung color
}
void draw(){ // main function
  draw_line(); //call line function
}
void draw_line(){ 
  // like the function at the top of this page
  stroke(#2E5077);       //line color
  strokeWeight(10);      //line thinkness
  //line(x1,y1,  x2,y2);
  line(400,400,600,600); //line function
}
*/
//------------------------------
//----------- page2 ------------
void page_intro_L(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw line",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("line(x1,y1,  x2,y2);", 20 , 300);
//--------------------------------------------------------------------------------
  draw_line();
}