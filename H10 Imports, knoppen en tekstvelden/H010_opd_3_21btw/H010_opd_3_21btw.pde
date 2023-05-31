import controlP5. *;


ControlP5 cp;

Button knop1;

Textfield TF1;

void setup(){
  size(500,500);
  background(25,25,25);
  cp = new ControlP5(this);
  

                    TF1 = cp.addTextfield("TextField1");
                    TF1.setPosition(100,50);
                    TF1.setCaptionLabel("Type hier");
                    TF1.setText("");
                    TF1.setAutoClear(false);
                        
                          knop1 = cp.addButton("knop1");
                          knop1.setPosition(15,50);
                          knop1.setCaptionLabel("bereken");


}

void draw(){
  
}

void knop1(){
   // mijnString = TF1.getText();
   // Integer mijnGetal = Integer.valueOf(mijnString);
   int bedrag = Integer.valueOf(TF1.getText());

   
    println(bedrag * 1.21);
     
}
