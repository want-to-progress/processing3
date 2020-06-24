void penguin(){
  noStroke();
  
  fill(#2C3A90); // set ellipse color
  ellipse(400-100,500,200,200); //right head
  ellipse(400+100,500,200,200); //left head
  
  rectMode(CENTER);
  rect(400,500,200,200);  //body
  rect(400,650,400,300);  //body
  
  rect(400,400,10,80);    //hair
  rect(400-30,400,10,60);    //hair
  rect(400+30,400,10,70);    //hair
  
  fill(#DEF534);
  triangle(400,500,400-80,500+100,400+80,500+100); //peak
  
  fill(255);//white
  arc(400,800, 200,200, PI,2*PI,PIE); //belly
  rect(400-100,500+50,100,20); //lower eyelid
  rect(400+100,500+50,100,20); //lower eyelid
  rect(400-100,500+20,100,20); //upper eyelid
  rect(400+100,500+20,100,20); //upper eyelid
}

//----------- page8 ------------
void exercise(){
  PImage pen = loadImage("penguin.png");
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("Exercise",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("draw a penguin", 20 , 300);
//--------------------------------------------------------------------------------
  penguin();
  
//-------------------------------------------------------------------------------
//*************************//
//input picture
//*************************//
    noStroke();   // no frame around
    beginShape(); // use vertex to shape where to input picture
    texture(pen); //input file
    //this picture is 900 * 675
    //but I only need X for [150,700] and y for [100,600]
    //vertex(vertex_X , vertex_Y , photo_X , photo_Y)
    //it is enable to zoom in and out
    //the following zoom out for 1/2 height & 1/2 width
    vertex(width - (600)/2, height - (600)/2, 500, 400);
    vertex(width, height - (600)/2, 1400, 400);
    vertex(width, height, 1400, 1080);
    vertex(width - (600)/2, height, 500, 1080);
    endShape();
//****************************************************
//The following only print the picture (no shaping it)
//image ( photo , left_top_X , left_top_Y)
//****************************************************
    rectMode(CENTER);
    fill(#F4C95D);
    rect(width-150,height - 350,300,100); //block
    triangle(width-100,height - 350,  width-100,height - 250,  width-50,height - 350); //triangle function
    textSize(80);  //set the text font
    fill(#0471A6);
    //best length is 25~28 character per line
    text("So tired", width-300 , height - 320);
}