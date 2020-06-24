//--------------------------------------------------
//a program to draw a pair of eyes
//it has been simplified, 
//maybe you will have difficulties to understand it
//All the parameter here do not have any meaning 
//it just work perfectly
//--------------------------------------------------
void setup()
{
  size(1200,800);
}

void draw(){
  background(#32E3B5);
  
  //position and the eye size
  int center_X = width/2;
  int center_Y = height/2;
  int eye_size = 100;
  
  //color - in Hexadecimal
  int lighter_eyecolor = #DE60CF;
  int mid_eyecolor = #A51596; 
  // R: (DE) - (49) = (A5)  G: (60) - (49) = (15)  B: (CF) - (49) = (96)
  int darker_eyecolor = #900081; 
  // R: (A5) - (15) = (90)  G: (15) - (15) = (00)  B: (96) - (15) = (81)
  
  Draw_eyespace(center_X, center_Y, eye_size);
  Draw_eye(center_X,center_Y,eye_size,
           lighter_eyecolor, mid_eyecolor, darker_eyecolor);
}


void Draw_eyespace(int center_X, int center_Y, int eye_size){
  //eye site
  int upper_eye_height = (eye_size + 10)/2;
  int left_eye_center  = center_X - eye_size;
  int right_eye_center = center_X + eye_size;
  
  //color
  int white = 0;
  int black = 255;
  
  //stroke weight
  int thickness_heavy = eye_size/10;
  
  //upper - eyespace
  stroke(white);
  strokeWeight(thickness_heavy);
  fill(black);
  arc( left_eye_center , center_Y, eye_size, upper_eye_height, PI, 2*PI, OPEN);
  arc( right_eye_center, center_Y, eye_size, upper_eye_height, PI, 2*PI, OPEN);

  //lower - eyespace - right
  Lower_eyespace(right_eye_center  , center_Y, eye_size, 
                 2*upper_eye_height,        0,    PI/10,    PI);
                 
  //lower - eyespace - left
  Lower_eyespace(left_eye_center   , center_Y, eye_size, 
                 2*upper_eye_height,  9*PI/10,       PI,     0);
                 
}



void Lower_eyespace(int eye_center, int center_Y, int eye_size, 
                    int eye_height, float str_degree, float mid_degree, float end_degree){
  
  //color
  int white = 0;
  int black = 255;
  
  //stroke weight
  int thickness_light = eye_size/15;
  
  stroke(white);
  strokeWeight(thickness_light);
  fill(black);
  if(str_degree < mid_degree)
      arc( eye_center, center_Y, eye_size, eye_height,  str_degree,  mid_degree);
  else
      arc( eye_center, center_Y, eye_size, eye_height,  mid_degree,  str_degree);
  noStroke();
  if(mid_degree < end_degree)
      arc( eye_center, center_Y, eye_size, eye_height,  mid_degree,  end_degree);
  else
      arc( eye_center, center_Y, eye_size, eye_height,  end_degree,  str_degree);
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
         int eye_size        , int eye_center  , int colored_eye_centerY
         ){
           
  //big eye
  int eye_X = 2*eye_size/3;
  int eye_Y = 3*eye_size/4;
  
  //shadow radius
  int shadow_Y = eye_size/5;
  int radius_X = 5*eye_size/9;
  int radius_Y = eye_size/3;
  
  //color
  int white = 0;
  int black = 255;
  
  //stroke weight
  int thickness_light = eye_size/30;
  
  //***** mouseY change y slowly*****//
  //big eye
  stroke(white);
  strokeWeight(thickness_light);
  fill(mid_eyecolor); 
  ellipse( eye_center + (float)(mouseX-eye_center)/eye_X, 
           colored_eye_centerY + (float)(mouseY-colored_eye_centerY)/2/eye_Y, eye_X, eye_Y);
  
  //shadow
  noStroke();
  fill(lighter_eyecolor); 
  arc( eye_center + (float)(mouseX-eye_center)/eye_X, 
       colored_eye_centerY + shadow_Y + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
       radius_X, radius_Y,5*PI/8,20*PI/8,OPEN);
  
  //pupil
  noStroke();
  fill(darker_eyecolor); 
  ellipse( eye_center + 2*(float)(mouseX-eye_center)/eye_X, 
           colored_eye_centerY + 2*(float)(mouseY-colored_eye_centerY)/2/eye_Y,
           eye_X/4, eye_Y/4);
  
  // light
  noStroke();
  fill(black); 
  ellipse( eye_center - radius_X/2 + (float)(mouseX-eye_center)/eye_X, 
           colored_eye_centerY - eye_size/4 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
           eye_size/8, eye_size/8);
  ellipse( eye_center + radius_X/2 + (float)(mouseX-eye_center)/eye_X, 
           colored_eye_centerY + eye_size/6 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
           eye_size/8, eye_size/12);
  
  // soft big light
  noStroke();
  fill(black,80); 
  arc( eye_center + (float)(mouseX-eye_center)/eye_X, 
       colored_eye_centerY + eye_size/3 + (float)(mouseY-colored_eye_centerY)/2/eye_Y, 
       radius_X/3, radius_Y/3,5*PI/8,20*PI/8,OPEN);
  
}