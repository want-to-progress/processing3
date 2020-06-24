//variable declaration at ppt line 8

void var_ani(){
  draw_rectangle();
  if(p == 100 || p==1) t = -t;
      p = p + t;
  //println("%d",p); //print at console line
}

void draw_rectangle(){
  noStroke(); //no frame
  rectMode(CENTER);
  fill(#0471A6);
  rect(600+p,600+p,600,100); //rectangle function
}

//----------- page2 ------------
void variable_animation(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(120);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Draw with Variable",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Use variable to\n                 \"move\" an object", 20 , 300);
//--------------------------------------------------------------------------------
  var_ani();
}