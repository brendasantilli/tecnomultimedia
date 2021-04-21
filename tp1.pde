void setup(){
  size(500,500);
   background(255);

}
void draw(){
  stroke(255);
                               //COLORES PRIMARIOS
  strokeWeight(3);

//ROJO 
  fill(255,0,0);
  triangle(250,250,250,0,400,0);

//VERDE
  fill(0,255,0);
  triangle(250,250,800,585,400,500);

//AZUL
  fill(0,0,255);
  triangle(250,250,0,250,0,400);
  
                               //COLORES SECUNDARIOS
                           
//CYAN
  fill(0,255,255);
  triangle(250,250,120,465,250,480);

//MAGENTA
  fill(255,0,255);
  triangle(250,250,15,110,115,25);
    
//AMARILLO
  fill(300,300,0);
  triangle(250,250,490,250,470,120);

                              //COLORES TERCIARIOS
                           
//VIOLETA
  fill(159,0,255);
  triangle(250,250,60,135,40,250);

//FUCSIA
  fill(255,0,159);
  triangle(250,250,135,60,250, 30);
  
//NARANJA
  fill(255,159,0);
  triangle(250,250,365,60,440,135);

//AMARILLO-VERDOSO
  fill(159,255,0);
  triangle(250, 250, 450, 250, 430, 360);

//VERDE-CYAN
  fill(0,255,159);
  triangle(250, 250, 250, 440, 350, 420);
  
//CYAN-AZULADO
  fill(0,159,255);
  triangle(250, 250, 60, 365, 140, 430);

}
