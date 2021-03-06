//-------------------------------------------------------
//more difficult than eye_universal
//I add the blink function
//Suggestion: please read the code in eye_universal first
//All the parameter here do not have any meaning 
//it just work perfectly
//-------------------------------------------------------

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

void setup()
{
  size(1200,800);
}

void draw(){
  background(#32E3B5);
  
  //*************************
  //variable you can change
  //*************************
  
  //position and the eye size
  int center_X = width/2;
  int center_Y = height/2;
  int eye_size = 90;
  
  //color
  int lighter_eyecolor = #DE60CF;
  int mid_eyecolor = #A51596; 
  int darker_eyecolor = #900081; 
  
 
  Draw_eyespace(center_X, center_Y, eye_size);
  Draw_eye(center_X,center_Y,eye_size,
           lighter_eyecolor, mid_eyecolor, darker_eyecolor);
  
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

//****************************************//
//anime_var is about animation
//mouseX, mouse_Y are about mouse control
//***************************************//
void Draw_eyespace(int center_X, int center_Y, int eye_size){
  //eye site
  int upper_eye_height = (eye_size + 10)/2;
  int left_eye_center  = center_X - eye_size;
  int right_eye_center = center_X + eye_size;
  
  //color
  int white = 255;
  int black = 0;
  
  //stroke weight
  int thickness_heavy = eye_size/10;
  
  //lower - eyespace - right
  Lower_eyespace(right_eye_center  , center_Y, eye_size, 
                 2*upper_eye_height,        0,    PI/10,    PI);
                 
  //lower - eyespace - left
  Lower_eyespace(left_eye_center   , center_Y, eye_size, 
                 2*upper_eye_height,  9*PI/10,       PI,     0);
                 
  //upper - eyespace
  stroke(black);
  strokeWeight(thickness_heavy);
  fill(white);
  arc( left_eye_center , center_Y + anime_var/2, eye_size, upper_eye_height - anime_var, PI, 2*PI, OPEN);
  arc( right_eye_center, center_Y + anime_var/2, eye_size, upper_eye_height - anime_var, PI, 2*PI, OPEN);   
}



void Lower_eyespace(int eye_center, int center_Y, int eye_size, 
                    int eye_height, float str_degree, float mid_degree, float end_degree){
  
  //color
  int white = 255;
  int black = 0;
  
  //stroke weight
  int thickness_light = eye_size/12;
  
  stroke(black);
  strokeWeight(thickness_light);
  fill(white);
  //left and right eye have different start degree and end point
  if(str_degree < mid_degree)
      arc( eye_center, center_Y + anime_var/2, eye_size, eye_height - 2*anime_var,  str_degree,  mid_degree);
  else
      arc( eye_center, center_Y + anime_var/2, eye_size, eye_height - 2*anime_var,  mid_degree,  str_degree);
  noStroke();
  if(mid_degree < end_degree)
      arc( eye_center, center_Y + anime_var/2, eye_size, eye_height - 2*anime_var,  mid_degree,  end_degree);
  else
      arc( eye_center, center_Y + anime_var/2, eye_size, eye_height - 2*anime_var,  end_degree,  str_degree);
}



void Draw_eye(int center_X, int center_Y, int eye_size,
              int lighter_eyecolor, int mid_eyecolor, int darker_eyecolor){
    
  //eye site
  int left_eye_center  = center_X - eye_size;
  int right_eye_center = center_X + eye_size;
  int colored_eye_centerY = center_Y + eye_size/6;

  
    //eye - right
    eye(lighter_eyecolor,mid_eyecolor,darker_eyecolor,
                eye_size,right_eye_center,colored_eye_centerY
                );

    //eye - left 
    eye(lighter_eyecolor,mid_eyecolor,darker_eyecolor,
                eye_size,left_eye_center,colored_eye_centerY
                );
} 


void eye(int lighter_eyecolor, int mid_eyecolor, int darker_eyecolor,
         int eye_size        , int eye_center  , int colored_eye_centerY){
           
  //**************************************************
  //the parameter inside this scope just a better case 
  //only one is confirmed, eye_x move faster than eye_y
  //due to human eyes
  //**************************************************
  
  //big eye
  int eye_X = 2*eye_size/3;
  int eye_Y = 3*eye_size/4;
  
  //shadow radius
  int shadow_Y = eye_size/5;
  int radius_X = 5*eye_size/9;
  int radius_Y = eye_size/3;
  
  //color
  int white = 255;
  int black = 20;
  
  //stroke weight
  int thickness_light = eye_size/30;
  
  //big eye
  stroke(black);
  strokeWeight(thickness_light);
  fill(mid_eyecolor); 
  if(anime_var < 5*eye_size/11)
  arc( eye_center + (float)(mouseX-eye_center)/eye_X, 
       colored_eye_centerY + (float)(mouseY-colored_eye_centerY)/3/eye_Y, 
       eye_X,   
       eye_Y - anime_var, 
       3*PI/2 + (float)anime_var/((eye_size + ((mouseX-eye_center)/eye_X + (mouseY-colored_eye_centerY)/eye_Y/2)/2)/4) - ((abs(mouseY-colored_eye_centerY) + abs(mouseX-eye_center)/2)/(eye_Y + eye_X))*0.05,
       3*PI + PI/2 - (float)anime_var/((eye_size + ((mouseX-eye_center)/eye_X + (mouseY-colored_eye_centerY)/eye_Y/2)/2)/4) + ((abs(mouseY-colored_eye_centerY) + abs(mouseX-eye_center)/2)/(eye_Y + eye_X))*0.05, 
       OPEN);
  
  //shadow
  noStroke();
  fill(lighter_eyecolor); 
  if(anime_var < 2*(eye_size -10)/5)
  arc(eye_center + (float)(mouseX-eye_center)/eye_X, 
      colored_eye_centerY + shadow_Y - (2*anime_var/5) + (float)(mouseY-colored_eye_centerY)/2/eye_Y,
      radius_X - 4*anime_var/5,
      radius_Y - 2*anime_var/5,
      3*PI/2 + (float)anime_var/40,
      3*PI + PI/2 - (float)anime_var/40,
      OPEN);
  
  //pupil
  noStroke();
  fill(darker_eyecolor); 
  if(anime_var < eye_size/3)
  ellipse( eye_center + 2*(float)(mouseX-eye_center)/eye_X, 
           colored_eye_centerY + 2*(float)(mouseY-colored_eye_centerY)/2/eye_Y, 
           eye_X/4 - anime_var/4, 
           eye_Y/4 - anime_var/4);
  
  // light
  noStroke();
  fill(white); 
  if(anime_var < eye_size/8){
    ellipse( eye_center - radius_X/2 + (float)(mouseX-eye_center)/eye_X, 
             colored_eye_centerY - eye_size/4 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
             eye_size/8, eye_size/8);
    ellipse( eye_center + radius_X/2 + (float)(mouseX-eye_center)/eye_X, 
             colored_eye_centerY + eye_size/6 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
             eye_size/8, eye_size/12);
  }
  
  // soft big light
  noStroke();
  fill(white,80); 
  if(anime_var < eye_size/8)
  arc( eye_center + (float)(mouseX-eye_center)/eye_X, 
       colored_eye_centerY + eye_size/3 - anime_var/2 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
       radius_X/3, radius_Y/3,5*PI/8,20*PI/8,OPEN);
  
}