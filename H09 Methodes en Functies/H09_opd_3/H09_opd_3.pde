int mijnGetal;

void setup(){
  println(optellen(10,20));
  mijnGetal = optellen(5,25);
  println(mijnGetal);
 }
 
 
  void draw (){
  
  }
  
  
 int optellen(int getal1, int getal2){
    int antwoord = (getal1 + getal2)/2;
    return(antwoord);
   }
