//game section
static int init = 1, game_start = 2, dead = 3;
int state = 1;

void setup() {
  size(1200, 800);
  background(255);
} 

void draw(){
  background(255);
  //game section
  switch(state){
    case(1):
      init_game();
    break;
    case(2):
      start_game();
    break;
    case(3):
      you_are_dead();
    break;
  }
  
  //the floor
  rectMode(CORNER);
  fill(#ED891D);
  rect(pipe_counter[0],height - pipe_Y[0] + block_size/2, pipe_X[0],pipe_Y[0]);
  rect(pipe_counter[1],height - pipe_Y[1] + block_size/2, pipe_X[1],pipe_Y[1]);
  rect(pipe_counter[2],height - pipe_Y[2] + block_size/2, pipe_X[2],pipe_Y[2]);
}

//the floor
float [] pipe_X = new float [3];
float [] pipe_Y = new float [3];
//moving counter
float [] pipe_counter = new float [3];
//charactor size
int block_size = 80;
//charactor moving_X
int rect_pos = 0;

//is initilze
boolean init_over = false;


void init_game(){
    textSize(70);
    fill(#ED1DAF);
    text("Press any key to start the game",50,height/2);
      
    if(!init_over){
      //generate floor parameter
      pipe_X[0] = random(width/6,width/3);
      pipe_Y[0] = random(200,300);
      
      pipe_X[1] = random(width/6,width/3);
      pipe_Y[1] = pipe_Y[0];
      
      pipe_X[2] = random(width/6,width/3);
      pipe_Y[2] = pipe_Y[0];
      
      pipe_counter[0] = 0;
      pipe_counter[1] = 1.4*random(width/6,width/4);
      pipe_counter[2] = 1.4*(pipe_counter[1] + random(width/6,width/4));
      
      init_over = true;
      rect_pos = 0;
    }
    
    //draw charactor
    rectMode(CENTER);
    noStroke();
    fill(#000066);
    rect(block_size/2+rect_pos,height - pipe_Y[0]-rect_pos_Y,block_size,block_size);
    prev_X = block_size/2+rect_pos;
    prev_Y = height - pipe_Y[0];
}

//previous chractor position 
float prev_X = 0.0;
float prev_Y = 0.0;

void start_game(){
  //floor move to left
  pipe_counter[0]--;
  pipe_counter[1]--;
  pipe_counter[2]--;
  
  //if the first floor leave the screen
  if(pipe_counter[0] + pipe_X[1] <= 0){
    pipe_X[0] = pipe_X[1];
    pipe_Y[0] = pipe_Y[1];
    pipe_X[1] = pipe_X[2];
    pipe_Y[1] = pipe_Y[2];
    pipe_X[2] = random(width/6,width/3);
    pipe_Y[2] = pipe_Y[2];
    
    pipe_counter[0] = pipe_counter[1];
    pipe_counter[1] = pipe_counter[2];
    pipe_counter[2] = 1.4*(pipe_counter[1] + random(width/6,width/4));
  }
  
  //draw charactor---------------------------------------------------------------------
  rectMode(CENTER);
  noStroke();
  fill(#000066);
  
  float X = block_size/2+rect_pos;
  float Y = height;
  //at pipe0
  if(X + block_size/2>=pipe_counter[0] && X - block_size/2<=pipe_counter[0]+pipe_X[0]){
    if(prev_Y -rect_pos_Y<=height-pipe_Y[0]){
      rect(X,Y -rect_pos_Y - pipe_Y[0],block_size,block_size);
      prev_X = X;
      prev_Y = (prev_Y < Y - pipe_Y[0])? prev_Y :  Y - pipe_Y[0];
    }
    else{ 
      rect(prev_X,prev_Y,block_size,block_size);
      state = dead;
    }
  }
  //at pipe1
  else if(X + block_size/2>=pipe_counter[1] && X - block_size/2<=pipe_counter[1]+pipe_X[1]){
    if(prev_Y -rect_pos_Y<=height-pipe_Y[1]){
      rect(X,Y -rect_pos_Y - pipe_Y[1],block_size,block_size);
      prev_X = X;
      prev_Y = (prev_Y < Y - pipe_Y[1])? prev_Y :  Y - pipe_Y[1];
    }
    else{ 
      rect(prev_X,prev_Y,block_size,block_size);
      state = dead;
    }
  }
  //at pipe2
  else if(X + block_size/2>=pipe_counter[2] && X - block_size/2<=pipe_counter[2]+pipe_X[2]){
    if(prev_Y -rect_pos_Y<=height-pipe_Y[2]){
      rect(X,Y -rect_pos_Y - pipe_Y[2],block_size,block_size);
      prev_X = X;
      prev_Y = (prev_Y < Y - pipe_Y[2])? prev_Y :  Y - pipe_Y[2];
    }
    else{ 
      rect(prev_X,prev_Y,block_size,block_size);
      state = dead;
    }
  }
  else{//in the air
    if(rect_pos_Y == 0)prev_Y++;
    rect(X,prev_Y -rect_pos_Y,block_size,block_size);
    if(prev_Y + block_size/2 -rect_pos_Y >= height) state = dead;
  }
  //---------------------------------------------------------------------
  //if the charactor jump 
  if(jump){
    rect_pos_Y+=diff;
    if(rect_pos_Y == 0) jump = false;
    if(rect_pos_Y<=0 || rect_pos_Y >= 150) diff = -diff;
  }
}

void you_are_dead(){
  textSize(70);
  fill(#ED1DAF);
  text("You're dead",200,height/4);
  text("Press \'r\' to restart the game",50,height/2);
  init_over = false;
}

//is the charactor jump?
boolean jump = false;
//jump height
int rect_pos_Y = 0;
//how height the charact change per time cycle
int diff = 1;

void keyPressed(){  
  if(state == dead && (key == 'r' || key == 'R')) state = init;
  else if(state != game_start && state != dead) state = game_start;
  if(key == CODED && state != dead){
    switch (keyCode){
      case RIGHT:
        rect_pos+=3;
      break;
      case LEFT:
        rect_pos-=3;
      break;
      case UP:
        jump = true;
      break;
    } 
  }
}