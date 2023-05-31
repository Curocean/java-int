import controlP5. *;

ControlP5 cp;

Button knop1;
//Button knop2;

Textfield TF1;
Textfield TF2;

void setup(){
  size(500,500);
  background(25,25,25);
  cp = new ControlP5(this);
  

                    TF1 = cp.addTextfield("TextField1");
                    TF1.setPosition(100,50);
                    TF1.setText("").setCaptionLabel("Type aantal Studenten").setSize(125,30);
                    TF1.setAutoClear(false);
                    
                    TF2 = cp.addTextfield("TextField2");
                    TF2.setPosition(100,100);
                    TF2.setText("").setCaptionLabel("Type aantal ouders").setSize(125,30);
                    TF2.setAutoClear(false);
                        
                          knop1 = cp.addButton("knop1");
                          knop1.setPosition(15,50);
                          knop1.setCaptionLabel("bereken ").setSize(75,30);
                          
                         // knop2 = cp.addButton("knop2");
                         // knop2.setPosition(15,100);
                         // knop2.setCaptionLabel("bereken ouders").setSize(75,30);


}

void draw(){
  
}

void knop1(){
   
int student;
int ouders;

String mijnString =  TF1.getText();
String mijnString2 =  TF2.getText();

  student = Integer.valueOf(TF1.getText());
  ouders = Integer.valueOf(TF2.getText());

  student = int(mijnString);
  ouders = int(mijnString2);
   
    println(student + " aantal studenten");
    println(ouders + " aantal ouders");
    println(student + ouders +" aantal personnen");
     
}
