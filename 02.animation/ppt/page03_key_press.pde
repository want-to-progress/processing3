//stay_time declaration is at ppt line 13
//function call at ppt line36 -- keyPressed
//OR can use the other funtion -- keyReleased -- at line 68
//you can see the example "simple hello world" for more information
void show_HW(){
  if(state == 3){ //it only raise at page 3
      fill(#F2FF40);
      textSize(100);
      text("Hello word!", 10, height); 
  }
  stay_time--; // count the time how long the text appear
}

//----------- page3 ------------
void key_control(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(120);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Control by key",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Press \"h\" to show \"Hello world\"\nPlease check your input.\nIt need to be English.\nIt works very different\nin lower and upper letter.", 20 , 300);
//--------------------------------------------------------------------------------
  if(stay_time!=0) show_HW(); // count the time how long the text appear
}