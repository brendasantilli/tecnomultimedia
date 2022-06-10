boolean encendido = true;

void setup() {

  size(600, 600);
}

void draw() {

  if (!encendido) {

    background(0);
    stroke(255, mouseY, mouseX);
    strokeWeight(0.5);
  } else {
    background(255);
    stroke(0);
    strokeWeight(0.5);
  }

  //ESTRUCTURA REPETITIVA: FOR
  noFill();
  for (int d = 1100; d > 0; d -= 10) {
    ellipse(width/2, height/2, d+frameCount, d-frameCount);
  }

  //BOTÓN DE REINICIO
  if (frameCount>1250) {
    noStroke();
    fill(255, 0, 0);
    ellipse(width/2, height/2, width/4, height/4);
  }

  //FUNCIONAMIENTO DEL BOTÓN (FUNCIÓN DIST)
  if ( dist(mouseX, mouseY, 300, 300) < 25 && mousePressed && (frameCount>1000)) {
    frameCount = 0;
  }
  println(frameCount);
}

void mousePressed() {

  encendido = !encendido;
}
