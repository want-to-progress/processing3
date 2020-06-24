//****************************************//
//a,i,u,e,o to change the mouth style
//1,2 to change the hair style
//****************************************//
void keyPressed(){
    switch (key){
        case('a'):
        case('A'):
            mouth_type = 'a';
        break;
        case('i'):
        case('I'):
            mouth_type = 'i';
        break;
        case('u'):
        case('U'):
            mouth_type = 'u';
        break;
        case('e'):
        case('E'):
            mouth_type = 'e';
        break;
        case('o'):
        case('O'):
            mouth_type = 'o';
        break;
        case('1'):
            hair_type = '1';
        break;
         case('2'):
            hair_type = '2';
        break;
        default:
            mouth_type = 'x';
            hair_type  = '1';
        break;
    }
}