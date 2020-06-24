int stroke_color = 0; // for "How to use mouseX, mouseY"
int botton_click_stay_time = 0;
int e = 0;
int scroll_position = 300;
//-------------------------------------------------------------------------------
void mouseMoved() {
  if(state == 4){
    noStroke(); //no frame
    fill(#50C9CE);
    ellipse(mouseX,mouseY,20,20); //rectangle function
  }
}
//-------------------------------------------------------------------------------
void mouseClicked() {
  // a little bit different from press and release 
  if(mouseButton == LEFT || mouseButton ==RIGHT || mouseButton ==CENTER){
    if (mouseX<=600+300 && mouseX>=600-300 && mouseY<=600+50 && mouseY>=600-50 && state == 4) {
       botton_click_stay_time = 100;
    }
  }
}
//-------------------------------------------------------------------------------
void mouseWheel(MouseEvent  event) { //wheel between the right and left mouse botton
  e = event.getCount(); //wheel up --> -1    wheel down --> 1
  //println(e);
}



//----------- page4 ------------
void mouse(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(120);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Control by mouse",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Many ways to control\n-->Click, Move ,and Wheel", 20 , 300);
//--------------------------------------------------------------------------------
//*************************//
//How to use mouseX, mouseY
//*************************//
  if (mouseX<=600+300 && mouseX>=600-300 && mouseY<=600+50 && mouseY>=600-50) {
     //(600,600) is the center for the rectangle, and the length is 300+300 & width is 50+50
     stroke_color = 255;
     //println("%f %f",mouseX,mouseY);
  }
  else{
     stroke_color = 0;
  }
  stroke(stroke_color); 
  strokeWeight(5);
  rectMode(CENTER);
  fill(#0471A6);
  rect(600,600,600,100); //rectangle function
//---------------------------------------------------------------------------------  
//****************//
//When mouse click
//****************//
  if(botton_click_stay_time>0){
    textSize(80);  //set the text font
    fill(#A6D9F7);
    //best length is 25~28 character per line
    text(" It works! \\^.^/", 600-300 , 600+30); // on the rectangle
    botton_click_stay_time--;
  }
//---------------------------------------------------------------------------------  
//***************************//
//When mouse wheel up or down
//***************************//
  scroll_position = ((scroll_position+10*e+100)<= height && (scroll_position+10*e-100)>=0)? scroll_position+10*e : scroll_position;
  noStroke();
  rectMode(CENTER);
  fill(#C97B84);
  rect(width-15,scroll_position,30,200); //rectangle function
  e = 0; 
//---------------------------------------------------------------------------------  
}