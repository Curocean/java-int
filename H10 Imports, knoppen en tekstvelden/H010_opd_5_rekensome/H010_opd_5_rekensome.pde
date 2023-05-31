import controlP5. *;

ControlP5 cp;

Button knop1;

Button plus;
Button min;
Button keer;
Button deel;


Textfield TF1;
Textfield TF2;

void setup(){
  size(500,500);
  background(25,25,25);
  cp = new ControlP5(this);
  

                    TF1 = cp.addTextfield("TextField1");
                    TF1.setPosition(100,50);
                    TF1.setText("").setCaptionLabel("TF1").setSize(125,30);
                    TF1.setAutoClear(false);
                    
                    TF2 = cp.addTextfield("TextField2");
                    TF2.setPosition(100,100);
                    TF2.setText("").setCaptionLabel("TF2").setSize(125,30);
                    TF2.setAutoClear(false);
                        
                          plus = cp.addButton("plus");
                          plus.setPosition(15,50);
                          plus.setCaptionLabel("+").setSize(30,30);
                          
                          min = cp.addButton("min");
                          min.setPosition(15,100);
                          min.setCaptionLabel("-").setSize(30,30);
                          
                          keer= cp.addButton("keer");
                          keer.setPosition(15,150);
                          keer.setCaptionLabel("*").setSize(30,30);
                   
                    
                          deel= cp.addButton("deel");
                          deel.setPosition(15,200);
                          deel.setCaptionLabel("/").setSize(30,30);


}

void draw(){
  
}

void plus(){
    
  int boven;
  int onder;
   
      String mijnString =  TF1.getText();
      String mijnString2 =  TF2.getText();
  
 boven = int(mijnString);
  onder = int(mijnString2);

  
   println(boven + onder);
    
}

void min(){
  int boven;
  int onder;
   
     String mijnString =  TF1.getText();
     String mijnString2 =  TF2.getText();

 boven = int(mijnString);
  onder = int(mijnString2);
  
  
  println(boven - onder);
  
}
void keer(){
  int boven;
  int onder;
   
    String mijnString =  TF1.getText();
    String mijnString2 =  TF2.getText();

 boven = int(mijnString);
  onder = int(mijnString2);
  
  
  println(boven * onder);
  
}

void deel(){
  int boven;
  int onder;
   
    String mijnString =  TF1.getText();
    String mijnString2 =  TF2.getText();

 boven = int(mijnString);
  onder = int(mijnString2);
  
  
  println(boven / onder);
  
}
