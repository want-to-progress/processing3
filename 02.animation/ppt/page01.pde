//----------- page1 ------------
void introduce_animation(){
    PImage img = loadImage("maker.jpg");
    background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
    textSize(100);  //set the text font
    fill(#F1D302);
    text("Animation & Control",width/8,height/2);
//-------------------------------------------------------------------------------
//******************//
//character in graph
//******************//
    noStroke();
    fill(#2E5077);//body
    ellipse(0,height,width/8,width/4);
    fill(#D7E8BA);//head
    ellipse(0,height-width/6,width/8,width/8);
    stroke(#2E5077);//hand
    strokeWeight(15);
    line(width/32,height,width/8+hand_shake,height/2+hand_shake);
    if(hand_shake >= 50 || hand_shake <= 0) s = -s;
    hand_shake = hand_shake + 2*s;
    //println("%d",hand_shake);
//-------------------------------------------------------------------------------
//*************************//
//input picture
//*************************//
    noStroke();   // no frame around
    beginShape(); // use vertex to shape where to input picture
    texture(img); //input file
    //this picture is 900 * 675
    //but I only need X for [150,700] and y for [100,600]
    //vertex(vertex_X , vertex_Y , photo_X , photo_Y)
    //it is enable to zoom in and out
    //the following zoom out for 1/2 height & 1/2 width
    vertex(width - (700-150)/2, height - (600-100)/2, 150, 100);
    vertex(width, height - (600-100)/2, 770, 100);
    vertex(width, height, 770, 600);
    vertex(width - (700-150)/2, height, 150, 600);
    endShape();
//****************************************************
//The following only print the picture (no shaping it)
//image ( photo , left_top_X , left_top_Y)
//****************************************************
}