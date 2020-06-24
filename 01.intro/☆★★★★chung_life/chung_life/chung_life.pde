
void setup() {
  size(1200,800); 
}


int glasses_size = 50;
void draw(){
  background(255);
  Thug_Life();
}


void Thug_Life(){
  
   glasses();
   cigratte();
   necklace();
}

void glasses(){
  int center_X = mouseX;
  int center_Y = mouseY;
  noStroke();
  fill(#000000);
  //glass
  arc(center_X - 1.2*glasses_size,center_Y - glasses_size,
      1.7*glasses_size,1.6*glasses_size,
      0,PI);
  arc(center_X + 1.2*glasses_size,center_Y - glasses_size,
      1.7*glasses_size,1.6*glasses_size,
      0,PI);  
      
  //frame
  rectMode(CENTER);
  rect(center_X,center_Y - .87*glasses_size,
       1.5*glasses_size,0.25*glasses_size);
       
       
}

void cigratte(){
   int center_X = mouseX;
   int center_Y = mouseY;
   noStroke();
   translate(center_X- 1.5*glasses_size,center_Y + 1.5*glasses_size);
     rotate(-PI/8);
       fill(#622E14);
       ellipse(0,0,2.5*glasses_size,.2*glasses_size);
       fill(#FA740D);
       ellipse(-1.25*glasses_size,0,.1*glasses_size,.1*glasses_size);
     rotate(PI/8);
   translate(-(center_X- 1.5*glasses_size),-(center_Y + 1.5*glasses_size));
}

void necklace(){
  int center_X = mouseX;
  int center_Y = mouseY;
  
  stroke(#EAEF05);
  strokeWeight(glasses_size/10);
  fill(0,0);
  ellipse(center_X+1.2*glasses_size,center_Y + 2*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X+1.1*glasses_size,center_Y + 2.4*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X+1.0*glasses_size,center_Y + 2.8*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X+ .7*glasses_size,center_Y + 3.1*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X+ .4*glasses_size,center_Y + 3.4*glasses_size,.5*glasses_size,.5*glasses_size);
  
  
  ellipse(center_X                 ,center_Y + 3.6*glasses_size,.5*glasses_size,.5*glasses_size);
  
  ellipse(center_X-1.2*glasses_size,center_Y + 2*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X-1.1*glasses_size,center_Y + 2.4*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X-1.0*glasses_size,center_Y + 2.8*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X- .7*glasses_size,center_Y + 3.1*glasses_size,.5*glasses_size,.5*glasses_size);
  ellipse(center_X- .4*glasses_size,center_Y + 3.4*glasses_size,.5*glasses_size,.5*glasses_size);
  
  
  fill(#E4C15E);
  ellipse(center_X,center_Y + 3.8*glasses_size,.8*glasses_size,.8*glasses_size);
  
  textSize(2*glasses_size/3);
  fill(#FAFF05);
  text("G", center_X - .23*glasses_size, center_Y + 4.05*glasses_size);
}