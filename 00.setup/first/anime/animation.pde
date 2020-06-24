//head weaving
static int waving_range = 2;

//delay between two blink
static int TC = 180; // 60 fps
static int animation_variable = 10; // how fast the eye blink
static int blink_times = 2; // hoe many times the eyes blink

//how many time has delayed
int time_cycle = 0;
int time_blink = blink_times; 

// recode time cycle
int anime_var = 0;
int diff = animation_variable;

//head
int waving = 0;
int WD = 1;
float Wtiming = 1;

void draw_ani(int eye_size){
  //head animation
  if(Wtiming >= TC){
    if(waving >= waving_range || waving <= -waving_range) WD = -WD;
    waving += WD;
    Wtiming = 0;
    if(waving == 0 && WD > 0) Wtiming = -8000;
  }
  Wtiming += 50;
  
  //eye animation
  if(time_blink > 0){
      if(anime_var > (eye_size+10)/2 ) {
        diff = -diff; //when eyes close --> open
        anime_var += diff; 
      }
      else if (anime_var <= 0  && time_blink == 2 && diff > 0) { // initial
        anime_var += diff; 
      }
      else if(anime_var <= 0 && diff < 0){ //after one blink
        time_blink --;
        diff = -diff; 
      }
      else anime_var += diff; //during blink
  }

  if(time_cycle > TC){
      time_blink = blink_times;
      time_cycle = 0;
  }
  else if(time_blink <= 0) time_cycle ++;
}