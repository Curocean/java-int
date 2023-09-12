int startTime = 0;

int time = 0;

void setup(){

size(500,500);

}

void draw(){

background(0);

time = second() - startTime;

text(time, 50,50);

}

void mousePressed(){



startTime = second();

}
