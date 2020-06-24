//import a studio
import processing.serial.*;
//---------------------------------------
//******************************//
//how to connect to microbit
//******************************//
//Step 1. Set serial1 to false
//Step 2. Run this code 
//Step 3. See the console window
//        It must show
//        [0] COM num1
//        [1] COM num2
//        ....
//If you use Windows, it must be a short list
//If you use MAC, it must be a long list
//
//Step 4. Change serial1_index to the number inside [ ]
//If you use Windows, it must be 0,1 or 2
//If you use MAC, it is ususlly at the end of the list
//Step 5. Set serial1 to true, then run the code
//Step 6. If the processing crash, you need to change serial1_index
//        If the processing don't crash, congradulation!
//---------------------------------------

//enable microbit control
boolean serial1 = false;

//change the value to your microbit COM "index"
int serial1_index = 0; 
Serial myPort1;

//secong microbit
//boolean serial2 = false;
//int serial2_index = 0;
//Serial myPort2;

void setup(){
    //show the serial port list
    printArray(Serial.list());
    
    size(1023, 700);
    
    if (serial1) myPort1 = new Serial(this, Serial.list()[serial1_index], 115200);
    //if (serial2) myPort2 = new Serial(this, Serial.list()[serial2_index], 115200);

    //close the window when serial1 is false
    if(!serial1) exit();
}
int keep_read = 0;  
void draw(){
    background(0);
    int read = 0;
    if(myPort1.available()> 0){
      //if it recieve somthing from microbit
      read = Get_value_from_microbit();   
    }
    if(read != 0){ 
      println(read);
    
      noStroke();
      fill(255);
      ellipse(width/2+read/2,height/2,300,300);
      //keep_read = read;
    }
      //noStroke();
      //fill(255);
      //ellipse(width/2+keep_read/2,height/2,300,300);
}


int atoi(String s){
    int r = 0;
    int st = 0;
    if (s.charAt(0) == '-') st = 1;
    for (int i=st;i<s.length();i++){
      if(s.charAt(i) == ' ') break;
      r = (int)(s.charAt(i))-48+10*r;
    }
    return r * ((st==1)? (-1) : 1);
}


int Get_value_from_microbit(){
    String inBuffer;
    //get the string sending from microbit
    //no matter what type of message you set
    inBuffer = myPort1.readString();
    //the recieve type is
    //(......DATA.....)\n
    String[] list = split(inBuffer, '\n');
    //after --> (......DATA.....)
    /*
    int [] r = {-2};
    // this section is other type of message
    // if you sent (string + int) 
    // you need this
    r = new int[list.length];
    for (int i=0;i<list.length;i++){
        String[] action = split(list[i], ':');
        if (action.length < 2){
            r[i] = -1;
            continue;
        }
        switch(action[0]){
            case "X":
            case "x":
                read = atoi(action[1]);
                r[i] = -1;
            break;
        }
    }
    */
    return atoi(list[0]);
}