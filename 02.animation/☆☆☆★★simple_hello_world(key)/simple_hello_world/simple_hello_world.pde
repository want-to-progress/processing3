
//initialize function before running this program
void setup(){
  size(1200,800); 
  // open a window with length frame_size_X = 1200
  // and width frame_size_Y = 800
  
}

//the main function in processing
void draw(){
  //define the background color 
  //0 for black and 255 for white
  //background(0);
  //or you can give it three number for (R,G,B)
  background(50,50,50);
  //if you don't know what color you want is represented in (R,G,B)
  //you can use the tool to find out
  //try Tools --> Color Selector to choose 
  delay(1000);
  // let the program pause for 1 second (1000 millsecond) then keep running
  // don't put this function in the keyPressed function below
  // it will create a race condition (the program will be crash)
}

//the function will be triggered when you press some key on the key bord
void keyPressed(){
  if (key == ESC) { //when you press the ESC 
    key = 0;  // Fools! don't let them escape!
    // this key will end the program default but we change it by these code
  }
  switch (key){
    case '1': 
      fill(#F2FF40);
      textSize(60);  //set the text font 
      text("Hello word!", 10, height); 
      // put what you want to print in the program at the first parameter
      // then set the position where you want to put the string
      // the second parameter for X
      // third for Y  
    break;
  } 
}