void calcWave() {
  // For every x value, calculate radius
  float x = 0;
  
  for (int i = 0; i < R.length; i++) {
    switch(which_function){
        case 1: R[i] = function1(x); break;
        case 2: R[i] = function2(x); break;
        case 3: R[i] = function3(x); break;
        case 4: R[i] = function4(x); break;
    }
    x+=dx;
  }
}

void renderWave() {
  noStroke();
  fill(#52BBFF);
  
  // A simple way to draw the wave with an ellipse at each location
  float i = 0; //the theta
  
  for (int x = 0; x < R.length; x++) {
    ellipse(R[x]*cos(i), R[x]*sin(i), 5, 5);//the postion is x = R*cos, y = R*sin
    i+=dx;
  }
}