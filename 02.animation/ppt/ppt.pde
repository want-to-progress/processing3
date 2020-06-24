//***************************************//
//use window + uparrow to get full screen
//press ESC to close the screen
//***************************************//
//FSM state -- whole program
int state = 1;
int hand_shake = 1; //initial (be careful about this)
int s = 1; //what hand_shake pluse
//--page2--
int p = 99;  //initial p (be careful about this)
int t = -1;   //what p pluse
//--page3--
int stay_time = 0; //how long does the text pop up

void setup()
{
  size(1200,800 , P3D);
}

void draw(){
  switch (state){
    case (1):
      introduce_animation();
    break;
    case (2):
      variable_animation();
    break;
    case (3):
      key_control();
    break;
    case (4):
      mouse();
    break;
    case (5):
      mouse_2();
    break;
    case (6):
      example();
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
    case '4': state = 4; break;
    case '5': state = 5; break;
    case '6': state = 6; break;
    case 'h': 
      stay_time = 100; //reset the time
      show_HW();
    break;
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