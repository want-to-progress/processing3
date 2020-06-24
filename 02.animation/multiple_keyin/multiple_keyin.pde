boolean [] keys = new boolean [128];
int x,y;

void setup(){
  size(500,500);
  x = width/2;
  y = height/2;
}

void draw (){
 background(0);
 fill(255);
 ellipse(x,y,10,10);
 
 move();
}

void move(){
   if(keys['w']) y--;
   if(keys['s']) y++;
   if(keys['a']) x--;
   if(keys['d']) x++;
   
}

void keyPressed(){
  if(key>='a' && key <= 'z')
  keys[key] = true;
}

void keyReleased(){
  if(key>='a' && key <= 'z')
  keys[key] = false;
}