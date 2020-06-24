//----------- page1 ------------
void introduce_processing(){
  background(0);
//-------------------------------------------------------------------------------
//****************//
//set text 
//****************//
  textSize(130);  //set the text font
  fill(#F1D302);
  //best length is 15~17 character per line
  text("What's processing",width/20,180);
  textSize(80);  //set the text font
  fill(#0471A6);
  //best length is 25~28 character per line
  text("Processing is a language for\nlearning how to code within\nthe context of the visual arts.", 20 , 300);
//-------------------------------------------------------------------------------
//**************************************************************//
//This section is the animation at background
//counter between [0,40)    -->  print #AC80A0
//counter between [40,80)   -->  print #89AAE6
//counter between [80,120)  -->  print #3685B5
//counter on 0,40,80 --> get random number and print the circle
//counter on 120 --> AniCounter reset
//else --> print the circle form number array
//**************************************************************//
  noStroke();
  if(AniCounter < 40){
    if(AniCounter == 0){
      for(int i = 0 ; i < 25 ; i++){
        float randX = random(width);
        RX[i] = randX;
        float randY = random(height);
        RY[i] = randY;
        fill(#AC80A0,80);
        ellipse(randX,randY,30,30);
      }
    }
    else{
      for(int i = 0 ; i < 25 ; i++){
        fill(#AC80A0,80);
        ellipse(RX[i],RY[i],30,30);
      }
    }
    AniCounter++;
  }
  else if(AniCounter < 80){
    if(AniCounter == 40){
      for(int i = 0 ; i < 25 ; i++){
        float randX = random(width);
        RX[i] = randX;
        float randY = random(height);
        RY[i] = randY;
        fill(#89AAE6,80);
        ellipse(randX,randY,30,30);
      }
    }
    else{
      for(int i = 0 ; i < 25 ; i++){
        fill(#89AAE6,80);
        ellipse(RX[i],RY[i],30,30);
      }
    }
    AniCounter++;      
  }
  else if(AniCounter < 120){
      if(AniCounter == 40){
      for(int i = 0 ; i < 25 ; i++){
        float randX = random(width);
        RX[i] = randX;
        float randY = random(height);
        RY[i] = randY;
        fill(#3685B5,80);
        ellipse(randX,randY,30,30);
      }
    }
    else{
      for(int i = 0 ; i < 25 ; i++){
        fill(#3685B5,80);
        ellipse(RX[i],RY[i],30,30);
      }
    }
    AniCounter++;
  } 
  if(AniCounter == 120) AniCounter = 0;
//--------------------------------------------------------------------------------
}