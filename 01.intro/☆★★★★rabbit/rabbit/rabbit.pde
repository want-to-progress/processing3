int head_size = 80;
int R_eye_color = #AA2C09;
int R_light_color = #FF9C81;
void setup(){
  size(1200,800);
}

void draw(){
  
  int R_head_center_X =  width/2;
  int R_head_center_Y = height/2;
  //ear
  stroke(0);
  strokeWeight(head_size/30);
  fill(255);
  translate(R_head_center_X + head_size/3,(R_head_center_Y + head_size/3));
    rotate(PI/16);
      ellipse(0,0,head_size/4,1.2*head_size);
    rotate(-PI/16);  
  translate(-(R_head_center_X + head_size/3),-(R_head_center_Y + head_size/3));
  
  translate(R_head_center_X - head_size/3,(R_head_center_Y + head_size/3));
    rotate(-PI/8);
      ellipse(0,0,head_size/4,1.2*head_size);
    rotate(PI/8);  
  translate(-(R_head_center_X - head_size/3),-(R_head_center_Y + head_size/3));
  
  //body
  arc(R_head_center_X,R_head_center_Y+1.4*head_size,0.9*head_size,1.8*head_size,5*PI/8,2*PI+3*PI/8,CLOSE);
  
  //box
      rectMode(CENTER);
      fill(50);
      rect(R_head_center_X ,R_head_center_Y+2.1*head_size,
           0.5*head_size,0.2*head_size);
      fill(#FF0000);
      rect(R_head_center_X ,R_head_center_Y+2.4*head_size,
           0.5*head_size,0.6*head_size);
  
  //hand         
  stroke(0);
  strokeWeight(head_size/30);         
  fill(255);
  
  //right hand
  arc(R_head_center_X + 0.1*head_size,R_head_center_Y+1.9*head_size,
      0.45*head_size,0.5*head_size,
      PI/8,5*PI/8); 
  arc(R_head_center_X + 0.1*head_size,R_head_center_Y+1.5*head_size,
      0.45*head_size,head_size,
      2*PI,2*PI+4*PI/8);
  //front hand
  arc(R_head_center_X + 0.1*head_size,R_head_center_Y+2.1*head_size,
      0.2*head_size,0.2*head_size,
      PI,3*PI/2); 
      
  //left hand
  fill(255,0);
  arc(R_head_center_X - 0.1*head_size,R_head_center_Y+1.5*head_size,
      0.45*head_size,head_size,
      13*PI/16,PI);
  arc(R_head_center_X - 0.25*head_size,R_head_center_Y+2*head_size,
      0.2*head_size,0.5*head_size,
      11*PI/8,16*PI/8);
  arc(R_head_center_X - 0.25*head_size,R_head_center_Y+2.2*head_size,
      0.2*head_size,0.5*head_size,
      10*PI/8,14*PI/8);  
      
  //head
  fill(255);
  ellipse(R_head_center_X,R_head_center_Y+head_size,head_size,head_size);
  
  noStroke();
  fill(R_eye_color);
  //big eye
  ellipse(R_head_center_X - 0.2*head_size,
          R_head_center_Y + 0.9*head_size,
          head_size/10,head_size/5);
  ellipse(R_head_center_X + 0.2*head_size,
          R_head_center_Y + 0.9*head_size,
          head_size/10,head_size/5);
  //light
  fill(R_light_color);
  ellipse(R_head_center_X - 0.18*head_size,
          R_head_center_Y + 0.94*head_size,
          head_size/20,head_size/20);
  ellipse(R_head_center_X + 0.22*head_size,
          R_head_center_Y + 0.94*head_size,
          head_size/20,head_size/20);
          
  //nose
  int nose_Y = R_head_center_Y + 6*head_size/5;
  stroke(0);
  strokeWeight(head_size/30);
  line(R_head_center_X - 0.05*head_size,nose_Y - 0.05*head_size,
       R_head_center_X + 0.05*head_size,nose_Y + 0.05*head_size);
  line(R_head_center_X - 0.05*head_size,nose_Y + 0.05*head_size,
       R_head_center_X + 0.05*head_size,nose_Y - 0.05*head_size);     
}