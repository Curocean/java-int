size(70,70);
size(500,500);
background(255,255,255);

int xWaarde = 100;
int yWaarde = 10;

for(int i = 0; i < 5; i++){
  for(int j = 0; j < 2; j++){
    rect(xWaarde, yWaarde, 15,15);
  yWaarde += 30;
}
yWaarde = 10;
xWaarde += 30;
}
