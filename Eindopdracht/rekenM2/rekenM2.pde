int numButtons, lengte, hoogte, choice;

int som1;
int som2;
String operator;
String Textfield="";

final static int OPERATOR_PLUS = 10;
final static int OPERATOR_MINUS = 11;
final static int OPERATOR_MULTIPLY = 12;
final static int OPERATOR_DIVIDE = 13;     
                                                    //   0  100  200  300 
                                                    // 100
                                                    // 200
                                                    // 300
                                                    // 400
                                       
int[] v      =  { 100,   0, 100, 200,   0, 100, 200,   0, 100, 200, 300, 300, 300, 300, 200,   0, 300 };
int[] h       = { 400, 300, 300, 300, 200, 200, 200, 100, 100, 100, 300, 200, 100, 400, 400, 400, 0 };
String keys[] = {  "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "+", "-", "x", ":", "=", "C", " "};
                                       
                                       

void setup() {
  size(400, 500);
  background(255, 255, 255);
 strokeWeight(2);
  numButtons = 15;
  lengte         = 100;
  hoogte         = 100;

  for (int boxes = 0; boxes < 17; boxes = boxes+1) {
    fill(25,255,125);                                             // color
    rect(v[boxes], h[boxes], lengte, hoogte,10);
    fill(0);
    textSize(35);
    text(keys[boxes], (v[boxes] + 45), (h[boxes] + 65));
  }
  textSize(50);
  text(Textfield, 0, 100);
  leeg_veld();
  
}


void draw() {
}

void restart() {                                                 

  numButtons=15;
  lengte=100;
  hoogte=100;
  choice=0;

  som1=0;
  som2=0;
  operator=null;
  Textfield="";
 
 leeg_veld();                                                   
  
}                                                                   // leegveld

void leeg_veld() {
  fill(255);
  rect(0, 0,400,100);
  fill(0);  
}


void mouseClicked() {
  for (int i = 0; i < numButtons; i++) {
    if ((v[i] < mouseX) && (mouseX < (v[i] + lengte)) && (h[i] < mouseY) && (mouseY < (h[i]+hoogte))) {
      choice = i;
    }
  }
  if (choice >= 0 && choice <= 9) {
    if ( operator == null) {
      leeg_veld();
      
      som1 = parseInt(Integer.toString(som1)+ Integer.toString(choice));
    } else {
      som2 = parseInt(Integer.toString(som2)+ Integer.toString(choice));
    } 
    
     
    if (operator == null) {
      text(som1, 0, 100);
    } else {
      leeg_veld();
      text (som1+operator+som2, 0, 50);
     
    }
  }
  
  
                                                                // operator
     
    
  if (choice == OPERATOR_PLUS) {
    operator="+";
    leeg_veld();
    text (operator, 0, 100);
    
  } else if (choice == OPERATOR_MINUS) {
    operator="-";
    leeg_veld();
    text (operator, 0, 100);
    
  } else if (choice == OPERATOR_MULTIPLY) {
    operator="*";
    leeg_veld();
    text (operator, 0, 100);
  } else if (choice == OPERATOR_DIVIDE) {
    operator="/";
    leeg_veld();
    text (operator, 0, 100);
    
  
    
                                                               // vervlogens soms 
    
  } else if (choice == 14) {
     if (operator != null) {
    
    text (som1+operator+som2, 0, 50);
    leeg_veld();
    text(resultaat(), 0, 100);
    som1 = resultaat();
    som2=0;
    operator = null;
     
     }
    
}
        if (mouseX>0&&mouseX<lengte&&mouseY>400){
  restart();
   }
     
    

  
  
}
                                                               // berekenen
int resultaat() {

  if (operator == "+") {
    return som1+som2;
  } else if (operator == "-") {
    return som1-som2;
  } else if (operator == "*") {
    return som1*som2;
  } else if (operator == "/") {
    return som1/som2;
  }


  ;
  return 9999999;
}



 
