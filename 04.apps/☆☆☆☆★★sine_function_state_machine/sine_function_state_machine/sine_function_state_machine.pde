//----------------------------------------------------
//click to start the simulation of sine function
//press a(+),z(-) change amplitude
//press s(+),x(-) change frequency
//----------------------------------------------------
//FSM
int state = 0;

//draw sine
int xspacing = 16;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave
float theta = 0.0;  // Start angle at 0
float period = 500.0;  // How many pixels before the wave repeats
float dx;  // Value for incrementing X, a function of period and xspacing

//control
float amplitudeC = random(100);  // Height of wave
float[] yCvalues;  // Using an array to store height values for the wave

void setup()
{
  size(1200,800);
}

void draw(){
  switch (state){
    case (1):
        F0();
    break;
    case (2):
        F1();
    break;
    default: 
        state = 1;
    break;
  }
}

void mouseClicked(){
  state = 2;
      w = width+16;
      dx = (TWO_PI / period) * xspacing;
     
      yCvalues = new float[w/xspacing];
}

void keyPressed(){
  switch (key){
    case '1': 
      state = 1;
    break;
    case 'a':
      amplitudeC = (amplitudeC + 1 >= 100)? 100.0 : amplitudeC + 1;
    break;
    case 'z':
      amplitudeC = (amplitudeC - 1 <= 0.1)? 0.1 : amplitudeC - 1;
    break; 
    case 's':
      aC = (aC + 0.1 >= 5)? 5.0 : aC + 0.1;
    break;
    case 'x':
      aC = (aC - 0.1 <= 0.1)? 0.1 : aC - 0.1;
    break;
  } 
}

void F0(){
  background(255);
  textSize(32);
  text("Welcome", 530 , 380);
  fill(120);
}

float a = random(4);
float aC = 1;
void F1(){
  background(0);
  //calcWave();
  //renderWave();
  calcWave_can_cahnge_variable();
  renderWave_can_cahnge_variable();
}

void calcWave_can_cahnge_variable() {
  // Increment theta (try different values for 'angular velocity' here
  theta += 0.02;

  // For every x value, calculate a y value with sine function
  float x = theta;
  for (int i = 0; i < yCvalues.length; i++) {
    yCvalues[i] = sin(aC*x)*amplitudeC;
    x+=dx;
  }
}

void renderWave_can_cahnge_variable() {
  noStroke();
  fill(80.53,193);
  // A simple way to draw the wave with an ellipse at each location
  for (int x = 0; x < yCvalues.length; x++) {
    ellipse(x*xspacing, height/2+yCvalues[x], 16, 16);
  }
}