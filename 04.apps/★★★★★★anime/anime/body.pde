//120
//mouth type
char mouth_type = 'x';

void draw_face(int center_X, int center_Y, int eye_size, boolean cheek_on,
               int hair_color, int hair_color_dark){
  //stroke
  int white = 255;
  int black = 0;

  //face
  int face_frme = eye_size/25;
  int face_center = center_Y - eye_size/8;
  
  int left_eye_center  = center_X - eye_size;
  int right_eye_center = center_X + eye_size;
  
  //***hair -1
   stroke(hair_color_dark);
   strokeWeight(face_frme);
   fill(hair_color);
   arc( center_X, face_center, 4*eye_size,   9*eye_size/2,    29*PI/32,     67*PI/32 , OPEN);
   if(hair_type == '2'){
       //long hair
       noStroke();
       rectMode(CENTER);
       rect(center_X, face_center + 2.5*eye_size, 
            4*eye_size,           4*eye_size);
   }
  
   
   draw_body(center_X, center_Y, eye_size);
  // chin
  stroke(black);
  strokeWeight(face_frme);
  fill(#FFFFCA);
  arc( center_X, face_center+ 2*eye_size/100,  (float)347*eye_size/100,    (float)347*eye_size/100, 4*PI/16, 12*PI/16);
  
  //cheek
  stroke(black);
  strokeWeight(face_frme);
  fill(#FFFFCA);
  arc( center_X, face_center, 7*eye_size/2, 7*eye_size/2,    11*PI/16,     15*PI/16);
  arc( center_X, face_center, 7*eye_size/2, 7*eye_size/2,       PI/16,      5*PI/16);
  if(cheek_on){
      noStroke();
      fill(#E15025,30);
      ellipse(right_eye_center - 0.05*eye_size, center_Y + 4*eye_size/5, eye_size/2, eye_size/4);
      ellipse(left_eye_center + 0.05*eye_size , center_Y + 4*eye_size/5, eye_size/2, eye_size/4);
  }
  
  //forehead
  noStroke();
  fill(#FFFFCA);
  rectMode(CENTER);
  rect( center_X, center_Y - 5*eye_size/12, 5*eye_size/2, 12*eye_size/7);
  stroke(black);
  strokeWeight(face_frme);
  fill(#FFFFCA);
  arc( center_X, face_center, 7*eye_size/2,   4*eye_size,    15*PI/16,     PI + PI/4);
  arc( center_X, face_center, 7*eye_size/2,   4*eye_size, PI + 3*PI/4,  2*PI + PI/16);
  
  //nose
  noStroke();
  fill(black);
  ellipse(center_X , face_center + (eye_size + 10)/2, eye_size/16, eye_size/16);
  
  //ear
  stroke(black);
  strokeWeight(face_frme);
  fill(#FFFFCA);
  arc( left_eye_center - 7*eye_size/10, face_center, eye_size/2,  eye_size,    PI/2,     3*PI/2);
  arc( right_eye_center+ 7*eye_size/10, face_center, eye_size/2,  eye_size,  PI + PI/2,  2*PI + PI/2);
  
  //mouse
  if(mouth_type == 'a'){
      stroke(black);
      strokeWeight(face_frme);
      fill(#CC2936);
      arc( center_X, face_center + 4*eye_size/3, 2*eye_size/3,   eye_size/2, 0,  2*PI);
  }
  else if(mouth_type == 'i'){
      stroke(black);
      strokeWeight(face_frme);
      fill(white);
      arc( center_X, face_center + 4*eye_size/3, 2*eye_size/3,   eye_size/3, 0,  2*PI);
      fill(#CC2936);
      rectMode(CENTER);
      rect( center_X, face_center + 4*eye_size/3, 2*eye_size/3,   eye_size/100);
      
  }
  else if(mouth_type == 'u'){
      stroke(black);
      strokeWeight(face_frme);
      fill(#CC2936);
      arc( center_X, face_center + 4*eye_size/3, eye_size/6,   eye_size/6, 0,  2*PI);
  }
  else if(mouth_type == 'e'){
      stroke(black);
      strokeWeight(face_frme);
      fill(#CC2936);
      arc( center_X, face_center + 4*eye_size/3, 3*eye_size/4,   eye_size/3, 0,  2*PI);
      fill(white);
      arc( center_X, face_center + 4*eye_size/3, 3*eye_size/4,   eye_size/3, PI,  2*PI,CLOSE);
  }
  else if(mouth_type == 'o'){
      stroke(black);
      strokeWeight(face_frme);
      fill(#CC2936);
      arc( center_X, face_center + 4*eye_size/3, eye_size/3,   eye_size/2, 0,  2*PI);
  }
  else if(mouth_type == 'x'){
      stroke(black);
      strokeWeight(face_frme);
      fill(#FFFFCA);
      arc( center_X, face_center + 4*eye_size/3, eye_size/2,   eye_size/3, 0,  PI);
  }
}

void draw_body(int center_X, int center_Y, int eye_size){
  //stroke
  int white = 255;
  int black = 0;
  //face
  int face_frme = eye_size/32;
  //shoulder
  int shoulder = eye_size/3;
  rotate(-0.01*waving);
 
  //cloth-baclground
  int cloth_color = #FFAAEA;
  int close_color_dark = #EF9ADA;
  noStroke();
  fill(close_color_dark);
  arc(center_X, center_Y + 5.8*eye_size,3*eye_size,    0.6*eye_size,0,PI);
  
  //skirt
  int skirt_color = #95F9E3;
  noStroke();
  fill(skirt_color);
  rect(center_X, center_Y + 6.5*eye_size, 
       2.5*eye_size,    2*eye_size); 
  triangle(center_X - 1.2*eye_size, center_Y + 5.7*eye_size,
           center_X - 1.2*eye_size, height,
           center_X - 2.4*eye_size, height);
  triangle(center_X + 1.2*eye_size, center_Y + 5.7*eye_size,
           center_X + 1.2*eye_size, height,
           center_X + 2.4*eye_size, height);         
  stroke(black);
  strokeWeight(1.3*face_frme);
  line(center_X - 1.2*eye_size, center_Y + 5.7*eye_size,center_X - 2.4*eye_size, height);
  line(center_X + 1.2*eye_size, center_Y + 5.7*eye_size,center_X + 2.4*eye_size, height);
  //cloth-baclground
  noStroke();
  fill(cloth_color);
  rect(center_X, center_Y + 3.9*eye_size, 
       3*eye_size,    4*eye_size
       ,shoulder,shoulder,shoulder/2,shoulder/2);
  
       //around neck
  fill(#FFFFCA);
  arc(center_X, center_Y + 1.9*eye_size,
      1.6*eye_size,           eye_size,
      0,PI);    
      //neck
  noStroke();
   fill(#FFFFCA);
   rectMode(CENTER);
   rect(center_X, center_Y + 1.5*eye_size, 3*eye_size/4,  eye_size);
   stroke(black);
   strokeWeight(face_frme);
   line(center_X + 3*eye_size/8, center_Y + eye_size,
        center_X + 3*eye_size/8, center_Y + 2*eye_size);
   line(center_X - 3*eye_size/8, center_Y + eye_size,
        center_X - 3*eye_size/8, center_Y + 2*eye_size);
        
  //hands
    //right
  stroke(black);
  strokeWeight(face_frme);
  line(center_X + 1.5*eye_size,center_Y + 3*eye_size,
       center_X + 1.5*eye_size,center_Y + 5.8*eye_size);
  
  fill(cloth_color);
    translate(center_X + 1.8*eye_size,center_Y + 3.8*eye_size);
      rotate(-3*PI/32);
        noStroke();
        rect(0,0,0.5*eye_size,3.8*eye_size,shoulder);
        stroke(black);
        strokeWeight(face_frme);
        line(- .25*eye_size,-0.2*eye_size,
             - .25*eye_size, 1.5*eye_size);
      rotate(3*PI/32);
    translate(-(center_X + 1.8*eye_size),-(center_Y + 3.8*eye_size));     
         
    //left
    stroke(black);
    strokeWeight(face_frme);
    line(center_X - 1.5*eye_size,center_Y + 3*eye_size,
         center_X - 1.5*eye_size,center_Y + 5.8*eye_size);
       
    translate(center_X - 1.8*eye_size,center_Y + 3.8*eye_size);
      rotate(3*PI/32);
        noStroke();
        rect(0,0,0.5*eye_size,3.8*eye_size,shoulder);
        stroke(black);
        strokeWeight(face_frme);
        line( .25*eye_size,-0.2*eye_size,
              .25*eye_size, 1.5*eye_size);
      rotate(-3*PI/32);
    translate(-(center_X - 1.8*eye_size),-(center_Y + 3.8*eye_size));
  
  //finger
    stroke(black);
    strokeWeight(face_frme);
    fill(#FFFFCA);
    //index
    rect(center_X + 2.2*eye_size,center_Y + 5.83*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
    rect(center_X - 2.2*eye_size,center_Y + 5.83*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
    //middle
    rect(center_X + 2.3*eye_size,center_Y + 5.9*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
    rect(center_X - 2.3*eye_size,center_Y + 5.9*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
    //ring
    rect(center_X + 2.4*eye_size,center_Y + 5.85*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
    rect(center_X - 2.4*eye_size,center_Y + 5.85*eye_size,0.1*eye_size,0.1*eye_size,shoulder);
  //sleeve
    noStroke();
    fill(cloth_color);
    rect(center_X + 2.3*eye_size,center_Y + 5.6*eye_size,0.5*eye_size,0.6*eye_size,shoulder);
    rect(center_X - 2.3*eye_size,center_Y + 5.6*eye_size,0.5*eye_size,0.6*eye_size,shoulder);
    
  //rabbit patterns
    draw_rabbit(eye_size);
    
  //chest
    stroke(black);
    strokeWeight(1.3*face_frme);
    line(center_X + 1.33*eye_size,center_Y + 2.7*eye_size,
         center_X + 1.52*eye_size,center_Y + 3.8*eye_size);
    line(center_X - 1.33*eye_size,center_Y + 2.7*eye_size,
         center_X - 1.52*eye_size,center_Y + 3.8*eye_size);  
  rotate(0.01*waving);
}

void draw_rabbit(int head_size){
  int R_eye_color = #AA2C09;
  int R_light_color = #FF9C81;
  int R_head_center_X = size_X/2;
  int R_head_center_Y = size_Y/2 + head_size;
  
  translate(-size_X/2,-(size_Y/2- Y_diff));
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
  translate(size_X/2,(size_Y/2- Y_diff));
}