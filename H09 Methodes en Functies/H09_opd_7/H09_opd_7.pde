int xWaarde;
int yWaarde;

void setup(){
  size(500,500);
  frameRate(10);
  fill(255,0,0);
  xWaarde = 50;
  yWaarde = 0;
}

void draw(){
  rect(xWaarde, yWaarde, 20 ,10);
  
  xWaarde++;
  yWaarde+=10;
}
  
