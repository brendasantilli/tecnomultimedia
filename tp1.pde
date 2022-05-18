color azul2, azul;
float estado, d, contador, x, y, tresSegundos, rojo;
int r;
PFont tipografia1, tipografia2, tipografia3;
PImage alex, MrA;

void setup() {
  size(1000, 600);

  rojo = color (200, 0, 0);
  azul = color(50, 230, 250);
  azul2 = color (50, 150, 250);

  r = 240 / 2;

  x = width/2;
  y = height/2;

  estado = 0;
  contador = 0;
  tresSegundos = 180;

  alex = loadImage("alex.jpg");
  MrA = loadImage("MrA.jpg");

  tipografia1 = createFont("trueno.otf", 70);
  tipografia2 = createFont("CWO.ttf", 70);
  tipografia3 = createFont("TruenoRg.otf", 20);
}

void draw() {

  //USO CONDICIONAL "OR" 1
  if ((estado == 1)  || (estado== 2) || (estado == 3) || (estado == 6)) {
    fill(255);
    textAlign(CENTER);
    textFont(tipografia1);
  }

  //USO CONDICIONAL "OR" 2
  if ((estado == 4)  || (estado == 5) || (estado == 7)) {
    fill(255);
    textAlign(CENTER);
    textFont(tipografia2);
  }

  //INICIO LOGICA DE ESTADOS
  if ((estado == 0)  || (tresSegundos == 181)) {

    //USO CONDICIONAL "AND" 1
    if (mouseX >0 && mouseY >0 && mouseX<1000 && mouseY <600) {
      rojo = random(150, 200);
      background(rojo, 0, 0);
    } else {
      background(0);
    }

    //BOTON PLAY
    circle(x, y, 240);
    fill(255);
    noStroke();
    triangle(450, 240, 450, 360, 580, y);
    fill(azul2);

    //EVENTO MOUSE HOVERS BOTON PLAY
    d = dist(mouseX, mouseY, x, y);
    if (d < r) {
      fill(azul);

      //CAMBIO DE PANTALLA CON MOUSEPRESSED
      if (mousePressed) {
        estado += 1;
      }
    }
  }

  if (estado == 1) {
    background(200, 0, 0);

    text("WARNER BROS. \n A KINNEY COMPANY \n Presents", x, y - 80);

    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }

  if (estado == 2) {
    background(20, 50, 250);

    text("A \n STANLEY KUBRICK \n PRODUCTION", x, y -80 );

    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }

  if (estado == 3) {
    background(0, 100, 0);

    textSize(70);
    text("ANTHONY BURGESS", x, y + 70);

    textFont(tipografia3);
    textSize(30);
    text("Based on the Novel by", x, y-20);

    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }

  if (estado == 4) {
    imageMode(CENTER);
    image(alex, x, y);

    fill(0, 70, 200);
    textSize(40);
    textAlign(LEFT);
    text("Malcolm McDowell \n as \n Alex DeLarge", 50, y+30);

    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }

  if (estado == 5) {
    imageMode(CENTER);
    image(MrA, x, y);

    fill(255, 100, 0);
    textAlign(LEFT);
    textSize(50);
    text("Patrick Magee \n as \n Mr Alexander", 40, 400);

    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }
  
  if (estado == 6){
    
    background(170,0,90);
  
    textSize(70);
    text("WENDY CARLOS", x, y + 70);

    textFont(tipografia3);
    textSize(30);
    text("Electronic Music \n Composed and Realised \n by", x, y-100);
        
    contador++;

    if (contador>=tresSegundos) {
      contador = 0;
      estado += 1;
    }
  }
  
    if (estado == 7) {
    background(250, 30, 0);

    //USO CONDICIONAL "AND" 2
    if ((estado == 7)  && (contador <= 90)) {
      rojo = random(50, 255);
      background(rojo, 30, 0);
      fill(rojo);
    }

    text("A CLOCKWORK ORANGE", x, y+20);

    textFont(tipografia3);
    textSize(20);
    text("© Copyright MCMLXXI by Warner Bros. Inc. and Polaris Productions Inc.All Rights Reserved", x, 500);
     
      contador++;
        
      if (contador>=240) {
      estado = 0;
    }
  }
  println(contador);
}
