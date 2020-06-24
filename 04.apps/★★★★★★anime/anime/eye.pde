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
  int thickness_heavy = eye_size/20;
  
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
  int thickness_light = eye_size/30;
  
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
  arc( eye_center + (float)(mouseX-(size_X/2)-eye_center)/eye_X, 
       colored_eye_centerY + (float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/3/eye_Y, 
       eye_X,   
       eye_Y - anime_var, 
       3*PI/2 + (float)anime_var/((eye_size + ((mouseX-(size_X/2)-eye_center)/eye_X + (mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/eye_Y/2)/2)/4) - ((abs(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY) + abs(mouseX-(size_X/2)-eye_center)/2)/(eye_Y + eye_X))*0.05,
       3*PI + PI/2 - (float)anime_var/((eye_size + ((mouseX-(size_X/2)-eye_center)/eye_X + (mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/eye_Y/2)/2)/4) + ((abs(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY) + abs(mouseX-(size_X/2)-eye_center)/2)/(eye_Y + eye_X))*0.05, 
       OPEN);
       
  //eyebow
  stroke(black);
  strokeWeight(thickness_light);
  fill(mid_eyecolor,0); 
  arc( eye_center, 
       colored_eye_centerY, 
       eye_X+3*eye_size/4,   
       eye_Y+3*eye_size/4, 
       5*PI/4 ,
       7*PI/4, 
       OPEN);
  //shadow
  noStroke();
  fill(lighter_eyecolor); 
  if(anime_var < 2*(eye_size -10)/5)
  arc(eye_center + (float)(mouseX-(size_X/2)-eye_center)/eye_X, 
      colored_eye_centerY + shadow_Y - (2*anime_var/5) + (float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/2/eye_Y,
      radius_X - 4*anime_var/5,
      radius_Y - 2*anime_var/5,
      3*PI/2 + (float)anime_var/40,
      3*PI + PI/2 - (float)anime_var/40,
      OPEN);
  
  //pupil
  noStroke();
  fill(darker_eyecolor); 
  if(anime_var < eye_size/3)
  ellipse( eye_center + 2*(float)(mouseX-(size_X/2)-eye_center)/eye_X, 
           colored_eye_centerY + 2*(float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/2/eye_Y, 
           eye_X/4 - anime_var/4, 
           eye_Y/4 - anime_var/4);
  
  // light
  noStroke();
  fill(white); 
  if(anime_var < eye_size/8){
    ellipse( eye_center - radius_X/2 + (float)(mouseX-(size_X/2)-eye_center)/eye_X, 
             colored_eye_centerY - eye_size/4 + (float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/2/eye_Y, 
             eye_size/10, eye_size/10);
    ellipse( eye_center + radius_X/2 + (float)(mouseX-(size_X/2)-eye_center)/eye_X, 
             colored_eye_centerY + eye_size/6 + (float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/2/eye_Y, 
             eye_size/8, eye_size/12);
  }
  
  // soft big light
  noStroke();
  fill(white,80); 
  if(anime_var < eye_size/8)
  arc( eye_center + (float)(mouseX-(size_X/2)-eye_center)/eye_X, 
       colored_eye_centerY + eye_size/3 - anime_var/2 + (float)(mouseY-(size_Y/2 - Y_diff)-colored_eye_centerY)/2/eye_Y, 
       radius_X/3, radius_Y/3,5*PI/8,20*PI/8,OPEN);
  
}