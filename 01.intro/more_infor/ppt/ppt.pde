//***************************************//
//use window + uparrow to get full screen
//press ESC to close the screen
//***************************************//
//FSM state -- whole program
int state = 0;

void setup()
{
  size(1200,800 , P3D);
}

void draw(){
  switch (state){
    case (0):
      title_page();
    break;
    case (1):
      page_intro_translate();
    break;
    case (2):
      page_intro_rotate();
    break;
    case (3):
      reference();
    break;
    default: 
        state = 0;
    break;
  }
}


void keyPressed(){ //the function will trigger by key pressed
  switch (key){ //this function is driven by ascii code
    case '0': 
      state = 0;
    break;
    case '1': //  number keys 
      state = 1;
    break;
    case '2': 
      state = 2;
    break;
    case '3': 
      state = 3;
    break;
  } 
}

void keyReleased() { //the function will trigger by key released
  if(key == CODED){
    switch (keyCode){ // this function is driven by processed ascii code
      case DOWN: // array key
          state = state + 1;
      break;
      case UP: 
          if(state > 0 ) state = state - 1;
          else state = 0;
      break;
    } 
  }
}