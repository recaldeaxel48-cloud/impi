PImage foto;

color colorFondo;
color colorFlechas;

void setup() {
  size(800, 400);

  foto = loadImage("40.jpeg");

  colorFondo = color(128, 2, 180);
  colorFlechas = color(220, 255, 0);
}

void draw() {

  background(colorFondo);

  image(foto, 0, 0, 400, 400);

  int espacioX = 61;
  int espacioY = 65;

  for (int fila = 0; fila < 7; fila++) {

    for (int col = 0; col < 7; col++) {

      float x = 420 + col * espacioX;
      float y = 39 + fila * espacioY;

      fill(devolverColor());

      noStroke();

      if (fila == 0 || fila == 3 || fila == 4) {

        dibujarIzquierda(x, y);

      } else {

        dibujarDerecha(x, y);
      }
    }
  }
}

// funcion que RETORNA un valor
color devolverColor() {

  return colorFlechas;
}

// click = cambia colores
void mousePressed() {

  colorFondo = color(random(255), random(255), random(255));

  colorFlechas = color(random(255), random(255), random(255));
}

// espacio = vuelve al original
void keyPressed() {

  if (key == ' ') {

    colorFondo = color(128, 2, 180);

    colorFlechas = color(220, 255, 0);
  }
}

// funcion SIN retorno
void dibujarDerecha(float x, float y) {

  pushMatrix();

  translate(x, y);

  rect(-18, -7, 20, 14);

  triangle(2, -22, 25, 0, 2, 22);

  popMatrix();
}

// funcion SIN retorno
void dibujarIzquierda(float x, float y) {

  pushMatrix();

  translate(x, y);

  rect(-2, -7, 20, 14);

  triangle(-25, 0, -2, -22, -2, 22);

  popMatrix();
}
