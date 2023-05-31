import controlP5. *;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  
  cp = new ControlP5(this);
  
  knop1 = cp.addButton("Knop1")
            .setPosition(0,250)
            .setSize(250,100)
            .setCaptionLabel("Klik mij");
  knop2 = cp.addButton("Knop2")
            .setPosition(250,250)
            .setSize(250,100)
            .setCaptionLabel("Klik mij");           

}

void draw(){
  
}

void Knop1(){
     println ("Goed");
     
}
void Knop2(){
     
     println("Fout");
}
