//hair type
static char hair_type = '2';
int pin_color = #EF767A;

void draw_hair(int center_X, int center_Y, int eye_size,
               int hair_color, int hair_color_dark, 
               int hair_accessories){
  //draw hair
  int face_frme = eye_size/25;
  int face_center = center_Y - eye_size/8;
  //if(hair_type == '2'){
       //side-hair
         if(Wtiming <= 1){
          if(Wtiming < -7000) rotate(0.00001*(7950+Wtiming));
          else if(Wtiming < -6000)rotate(0.00001*(6100+Wtiming));
          else if(Wtiming < -5000) rotate(0.00001*(-Wtiming-6100));
          else if(Wtiming <= -4000) rotate(0.00001*(Wtiming + 4000));
        }
        //left
        fill(hair_color);
        stroke(hair_color_dark);
        strokeWeight(face_frme);
        //lower
        arc( center_X - 9*eye_size/5, face_center + 8*eye_size/3,  
        3*eye_size/4           ,                 5*eye_size,    
        3*PI/4                 ,                 137*PI/100);
        //higher
        arc( center_X - 6*eye_size/5, face_center + 3*eye_size/2, 
        3*eye_size/2           ,                 6*eye_size,
        3*PI/4                 ,                     6*PI/4, OPEN);

        //right
        fill(hair_color);
        stroke(hair_color_dark);
        strokeWeight(face_frme);
        //lower
        arc( center_X + 9*eye_size/5, face_center + 8*eye_size/3,  
        3*eye_size/4           ,                 5*eye_size,
        163*PI/100             ,                2*PI + PI/4);
        arc( center_X + 6*eye_size/5, face_center + 3*eye_size/2, 
        3*eye_size/2           ,                 6*eye_size,
        6*PI/4                 ,                2*PI + PI/4, OPEN);
        
        if(Wtiming <= 1){
          if(Wtiming < -7000) rotate(-0.00001*(7950+Wtiming));
          else if(Wtiming < -6000)rotate(-0.00001*(6100+Wtiming));
          else if(Wtiming < -5000) rotate(-0.00001*(-Wtiming-6100));
          else if(Wtiming <= -4000) rotate(-0.00001*(Wtiming + 4000));
        }
        
        //higher-left 
        arc( center_X + eye_size, face_center - 23*eye_size/16, 
               15*eye_size/7,                 17*eye_size/8,
        3*PI /8                ,               8*PI/8);
        
        //middle-hair
        noStroke();
        fill(hair_color);
        //leftest
        arc( center_X - 5*eye_size/4, face_center - eye_size,  
        3*eye_size/4           ,          4*eye_size/3,
        6*PI/4                 ,          2*PI + 3*PI/4, OPEN);
        //rightest    
        arc( center_X + 5*eye_size/4, face_center - eye_size, 
        17*eye_size/16         ,                 4*eye_size/3,
        PI/4                   ,                6*PI/4, OPEN);
   
        stroke(hair_color_dark);
        strokeWeight(face_frme);
        //leftest
        arc( center_X - 5*eye_size/4, face_center - 7*eye_size/5,  
        3*eye_size/4           ,                 13*eye_size/6,
        2*PI                 ,                2*PI + PI/2, OPEN);
        //rightest       
        arc( center_X + 5*eye_size/4, face_center - 7*eye_size/5, 
        17*eye_size/16           ,                 15*eye_size/7,
        PI/2                 ,                PI, OPEN);
        
        //right longest    
        arc( center_X + 297*eye_size/1000, face_center - 23*eye_size/16, 
               17*eye_size/7,                 23*eye_size/8,
        PI /2                ,               8*PI/8, OPEN);

        //right longest    
        fill(0,0);
        stroke(hair_color,210);
        strokeWeight(face_frme*2);
        arc( center_X + 8*eye_size/10, face_center - 23*eye_size/16, 
               17*eye_size/7,                 23*eye_size/8,
        3*PI /5                ,               8*PI/8);
        
       //left     
       fill(hair_color);
       stroke(hair_color_dark);
       strokeWeight(face_frme);      
       arc( center_X - 8*eye_size/10, face_center - eye_size, 
               15*eye_size/10,                 8*eye_size/3,
        29*PI/16                ,               2*PI + 2*PI/8);
        
       int side_tail_center_X = center_X + 2*eye_size;
       int side_tail_center_Y = center_Y - eye_size;
       draw_accessories(side_tail_center_X,side_tail_center_Y,
                        hair_accessories,eye_size);
   //}
}

void draw_accessories(int side_tail_center_X, int side_tail_center_Y,
                      int hair_accessories, int eye_size){
   //if(hair_type == '2'){
        translate(side_tail_center_X - 25*eye_size/16, side_tail_center_Y - eye_size/32);
        rotate(3*PI/8);
            noStroke();
            fill(pin_color);
            rectMode(CENTER);
            rect(0, 0,
                 eye_size/8, 7*eye_size/10,eye_size/10);
        rotate(-3*PI/8);
        translate(-(side_tail_center_X - 25*eye_size/16), -(side_tail_center_Y - eye_size/32));
        
        //heart
        translate(side_tail_center_X - 2*eye_size/3, side_tail_center_Y + eye_size/2);
        int r = eye_size/4;
        rotate(-PI/4); // rotate(0 + (-PI/4))
            ellipse(0,-r/2,r,r); //left head
        rotate( PI/4); // rotate(-PI/4 + PI/4) --> rotate(0)
  
        rotate( PI/4); // rotate(0 + PI/4)
            ellipse(0,-r/2,r,r); //right head
        rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
        
        rectMode(CENTER);
        rotate( PI/4); // rotate(0 + PI/4)
            rect(0,0,r,r); //belly
        rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
        translate(-(side_tail_center_X - 2*eye_size/3), - (side_tail_center_Y + eye_size/2));
        
        translate(side_tail_center_X - 10*eye_size/3, side_tail_center_Y + eye_size/2);
        rotate(-PI/4); // rotate(0 + (-PI/4))
            ellipse(0,-r/2,r,r); //left head
        rotate( PI/4); // rotate(-PI/4 + PI/4) --> rotate(0)
  
        rotate( PI/4); // rotate(0 + PI/4)
            ellipse(0,-r/2,r,r); //right head
        rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
        
        rectMode(CENTER);
        rotate( PI/4); // rotate(0 + PI/4)
            rect(0,0,r,r); //belly
        rotate(-PI/4); // rotate(PI/4 - PI/4) --> rotate(0)
        translate(-(side_tail_center_X - 10*eye_size/3), - (side_tail_center_Y + eye_size/2));
    //}
}