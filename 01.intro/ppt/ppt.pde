//***************************************//
//use window + uparrow to get full screen
//press ESC to close the screen
//***************************************//
//FSM state -- whole program
int state = 0;
//animation counter -- in page 1
int AniCounter = 0;
//number array -- in page 1
float [] RX = new float [25];
float [] RY = new float [25];

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
      introduce_processing();
    break;
    case (2):
      page_intro_L();
    break;
    case (3):
      page_intro_R();
    break;
    case (4):
      page_intro_E();
    break;
    case (5):
      page_intro_T();
    break;
    case (6):
      page_intro_text();
    break;
    case (7):
      page_intro_arc();
    break;
    case (8):
      exercise();
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
    case '4': 
      state = 4;
    break;
    case '5': 
      state = 5;
    break;
    case '6': 
      state = 6;
    break;
    case '7': 
      state = 7;
    break;
    case '8': 
      state = 8;
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