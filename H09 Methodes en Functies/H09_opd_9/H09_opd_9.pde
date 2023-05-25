int xWaarde;
int yWaarde;

void setup(){
  size(500,500);
 
  
}
  void draw(){
  background(0,75,25);
  stroke(255,255,255);

  boom(100,200);
      boom(200,100);
      boom(0,0);
      boom(-100,-150);
      boom(-150,-50);
  }
void stam(int x, int y,int w){
 
   line(x,y,x+w,y);
   //botton
   line(x,y,x+w/2,y-w-130);
   //left
   line(x+w,y,x+w/2,y-w-130);
   //right    
   
}   

void bladeren(int x, int y,int sizeC){
ellipse(320-x,y,sizeC,100);
fill (0,200,25);

 }

void boom(int x, int y){
  stam(200-x,380+y,50);
  bladeren(100+x,230+y,110);


   
 }
