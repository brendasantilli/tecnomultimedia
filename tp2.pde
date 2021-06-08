 PFont font;
 PFont font2;
 PFont font3;
 PImage foto;
 PImage foto2;
void setup(){
 size(400,400);
 
 font = loadFont ("clock-40.vlw");
 font2 = loadFont ("trueno-20.vlw");
 font3 = loadFont ("clock-85.vlw");
 
 foto =loadImage ("alex.jpg");
 foto2 =loadImage ("mra.jpg");
 
 textAlign(CENTER, CENTER);
 fill(255);
}
void draw(){ 
  if(frameCount <258){
 background(#d35400);
  }
  if(frameCount >259){
 background(#B40505);
  }
  if(frameCount >755){
 background(#000BFF);
  }    
  if(frameCount >1175){
 background(#068901);
  }
  if(frameCount >1430){
 background(#D200A2);
  }  
  if(frameCount >1910){
 background(#d35400);
  }  
  if(frameCount >2325){
 background(0);
  } 

  
 //PANTALLA 1: TITULO
 textFont (font);
 text("a CLOCKWORK", 195, 200-frameCount);
 textSize(55);
 text("ORANGE", 200, 240-frameCount);

 //PANTALLA 2: PROTAGONISTA
 textFont (font2);
 textSize(20);
 text("STARRING", 200, (505-frameCount)*1.5);
 textFont (font);
 text("MALCOLM", 200, (535-frameCount)*1.5);
 text("MCDOWELL", 200,(560-frameCount)*1.5);
 textFont (font2);
 textSize(15);
 text("as Alex DeLarge", 200, (585-frameCount)*1.5);
 image (foto,40,(595-frameCount)*1.5);
 
 //PANTALLA 3: PERSONAJE SECUNDARIO 
 textFont (font);
 text("PATRICK MAGEE", 200,(980-frameCount)*1.5);
 textFont (font2);
 textSize(15);
 text("as Mr Alexander", 200,(1000-frameCount)*1.5);
 image (foto2,40,(1010-frameCount)*1.5);

 //PANTALLA 4: MUSICA
 textFont (font2);
 textSize(20);
 text("MUSIC BY", 200, (1395-frameCount)*1.5);
 textFont (font);
 text("WENDY CARLOS", 200, (1425-frameCount)*1.5);
 
 
 //PANTALLA 5: DIRECCION
 textSize(20);
 textFont (font2);
 text("A FILM BY", 200,1800-frameCount);
 textFont (font);
 textSize(55);
 text("STANLEY", 200, 1850-frameCount);
 text("KUBRICK", 200, 1890-frameCount);
 
 //PANTALLA 6: THE END
 textFont (font3);
 text("THE END", 200, 2300-frameCount);
 
 println(frameCount);
}
