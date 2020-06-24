float period = 400.0;  // sample rate
float dx;  // Value for incrementing X, a function of period and xspacing
float[] R;  // Using an array to store radius values for the wave

int which_function = 1;

boolean calover = false;
void setup(){
  size(1200,800);
  dx = (TWO_PI / period);
  R = new float[10*(int)period+1];
}

void draw() {
  background(0);
  translate(width/2,height/2);
  if(!calover) calcWave();
  renderWave();
}

float function1(float x){
  return 100*(cos(2*x));
}

float function2(float x){
  return 100*(sin(8*x/5));
}

float function3(float x){
  return 100*(sin(2.5*x)*sin(2.5*x)*sin(2.5*x)+cos(2.5*x)*cos(2.5*x)*cos(2.5*x));
}

float function4(float x){
  return 100*(2+sin(2.4*x)*sin(2.4*x)*sin(2.4*x));
}

void keyPressed(){
 switch(key){
   case '1': which_function = 1; break;
   case '2': which_function = 2; break;
   case '3': which_function = 3; break;
   case '4': which_function = 4; break;
 }
 calover = false;
}