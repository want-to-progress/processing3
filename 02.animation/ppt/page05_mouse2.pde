boolean botton_press = false;
boolean drag = false;
float currentX = 600;
float currentY = 400;
//-------------------------------------------------------------------------------
void mousePressed() {
  if(mouseButton == LEFT || mouseButton ==RIGHT || mouseButton ==CENTER){
    if(state == 5) botton_press = true;
  }
}
//-------------------------------------------------------------------------------
void mouseReleased() {
  if(mouseButton == LEFT || mouseButton ==RIGHT || mouseButton ==CENTER){
    if(state == 5) {
      botton_press = false;
      drag = false;
    }
  }
}
//-------------------------------------------------------------------------------
void mouseDragged() {
  if(mouseButton == LEFT || mouseButton ==RIGHT || mouseButton ==CENTER){
    if(state == 5) drag = true;
  }
}
//-------------------------------------------------------------------------------
//----------- page5 ------------
void mouse_2(){
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
  text("Many ways to control\n-->Press, Release, and Drag", 20 , 300);
//-------------------------------------------------------------------------------  
  if(botton_press){
    noStroke(); //no frame
    fill(#50C9CE);
    ellipse(mouseX,mouseY,50,50); //rectangle function
  }
//-------------------------------------------------------------------------------  
  if(drag && 
     mouseX<=currentX+50 && 
     mouseX>=currentX-50 && 
     mouseY<=currentY+50 && 
     mouseY>=currentY-50){
    noStroke(); //no frame
    fill(#56E39F);
    rectMode(CENTER);
    rect(mouseX,mouseY,100,100); //rectangle function
    currentX = mouseX;
    currentY = mouseY;
  }
  else{
    noStroke(); //no frame
    fill(#56E39F);
    rectMode(CENTER);
    rect(currentX,currentY,100,100); //rectangle function
  }
//-------------------------------------------------------------------------------
}