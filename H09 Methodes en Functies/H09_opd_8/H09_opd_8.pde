void setup(){
  size(500,500);
  
}
  void draw(){
  background(0,0,0);
  stroke(255,255,255);
  driehoek(200,300,100);
  
}

void driehoek(int x, int y,int w){
  
   line(x,y,x+w,y);
   //botton
   line(x,y,x+w/2,y-w);
   //left
   line(x+w,y,x+w/2,y-w);
   //right
   
   //line(beginX,beginY,eindX,eindY)
   
 }
