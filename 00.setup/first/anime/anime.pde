static int size_X = 1200;
static int size_Y = 800;

static int figure_size = 80;
static int Y_diff = 2*figure_size;

//background color
static int background_color = #ffffff;

void setup()
{
  size(1200,800,P2D);
  myFont = createFont("SentyTEA 新蒂下午茶体",100);
  textFont(myFont);
}

void draw(){
  background(background_color);
  int eye_size = figure_size;
  int center_X = width/4;
  int center_Y = height - 2*Y_diff;
  
  //cheek
  boolean cheek_on = true;
  
  //color
    //eye
    int lighter_eyecolor = #DE60CF;
    int mid_eyecolor = #A51596; 
    // R: (DE) - (49) = (A5)  G: (60) - (49) = (15)  B: (CF) - (49) = (96)
    int darker_eyecolor = #900081; 
    
    //hair
    int hair_color  = #48E5C2;
    int hair_color_dark  = #08A582;
    // R: (48) - (40) = (08)  G: (E5) - (40) = (A5)  B: (C2) - (40) = (82)
    int hair_accessories = #5E2BFF;
  
  translate(center_X,center_Y);
    rotate(0.01*waving);
      draw_face(0, 0, eye_size, cheek_on, hair_color, hair_color_dark);
      Draw_eyespace(0, 0, eye_size);
      Draw_eye(0,0,eye_size,
               lighter_eyecolor, mid_eyecolor, darker_eyecolor);
      draw_hair(0,0,eye_size,
                hair_color, hair_color_dark,hair_accessories);         
    rotate(-0.01*waving);
  translate(-center_X,-center_Y);
   
  draw_ani(eye_size);
  
  mouth_move();
  
  write_text();
}

int open = 0;
int times = 0;
void mouth_move(){
  if(open == 12 && times<16){
    mouth_type = (mouth_type == 'x')? 'a':'x'; 
    open = 0;
    times++;
  }
  else if(open < 12 && times<16){
    open++;
  }
  else if(times>=16 && open == 60){
    open = 0;
    times = 0;
  }
  else open++;
}