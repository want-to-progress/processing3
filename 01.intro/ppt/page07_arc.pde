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
//QUARTER_PI = HALF_PI/2
//-----------------------------------
//----------------------------
//*****************//
//set arc
//*****************//
void draw_arc(){
  //--------------------------------------
  //***********//
  //about frame
  //***********//
  stroke(#2E5077);       //frame color
  strokeWeight(10);      //frame thinkness
  //or use 
  //noStroke(); //no frame
  //--------------------------------------
  //******************************************************************************//
  //arc(x,y,    a,b,    start degree(in radians),end degree(in radians),    type);
  //******************************************************************************//

  fill(#EDE31D); // set arc color
  //if want to implement transparent color try
  //fill(#EDE31D,80); //80/255 left
  //if you don't want to fill color, try
  //noFill();
  arc(750,100, 150,150, 0,PI+QUARTER_PI,PIE); //arc function (yellow one)
  
  fill(#43E325); // set arc color
  arc(950,100, 150,150, 0,PI+HALF_PI,OPEN); //arc function (green one)
  
  fill(#ED7A95); // set arc color
  arc(1100,100, 150,150, 0,2*PI/3,CHORD); //arc function (pink one)
}
//-------------------------------------------------------------------------------

//----------- page7 ------------
void page_intro_arc(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw Arc",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("arc(x,y,a,b,SD,ED,Type);\na:major axes b:minor axes\nSD:start degree(in radians)\nED:end degree(in radians)\nType:PIE,OPEN,CHORD", 20 , 300);
//--------------------------------------------------------------------------------
  draw_arc();
}