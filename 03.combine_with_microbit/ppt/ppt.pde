//***************************************//
//use window + uparrow to get full screen
//press ESC to close the screen
//***************************************//
//FSM state -- whole program
int state = 1;


void setup()
{
  size(1200,800 , P3D);
}

void draw(){
  switch (state){
    case (1):
      microbit();
    break;
    case (2):
      intro();
    break;
    case (3):
      ex();
    break;
    default: 
        state = 1;
    break;
  }
}


void keyPressed(){ //the function will trigger by key pressed
  switch (key){ //this function is driven by ascii code
    case '1': state = 1; break;//  number keys
    case '2': state = 2; break;
    case '3': state = 3; break;
  } 
}

void keyReleased() { //the function will trigger by key released
  if(key == CODED){
    switch (keyCode){ // this function is driven by processed ascii code
      case DOWN: // Array key
          state = state + 1;
      break;
      case UP: 
          if(state > 1 ) state = state - 1;
          else state = 0;
      break;
      //it can also be ALT, CONTROL, SHIFT, BACKSPACE, TAB, ENTER, RETURN, ESC, and DELETE
    } 
  }
}