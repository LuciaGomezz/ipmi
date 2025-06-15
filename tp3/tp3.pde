// Gomez Lucia 122762/5
//

PImage imgtp3;

int modo = 0; 
int filas = 15;

void setup() {
  size(800, 400); 
  imgtp3 = loadImage("imgtp3.jpeg"); 
}

void draw() {
  background(255);
  image(imgtp3, 0, 0, width / 2, height);

  float alto = height / float(filas);

  float centroX = width * 0.75;
  float maxDist = width / 2;
  float posX = width / 2;

  int columna = 0; 

  while (posX < width) {
    float distX = dist(posX, 0, centroX, 0); 
    float tam = map(distX, 0, maxDist, 3, 40); 

    for (int fila = 0; fila < filas; fila++) {
      float posY = fila * alto;

      int colorActual; 

      if ((columna + fila) % 2 == 0) {
        if (modo == 2) {
          colorActual = color(150, 0, 255); // violeta
        } else if (modo == 1) {
          colorActual = color(255, 0, 0); // rojo
        } else {
          colorActual = 0; // negro
        }
      } else {
        if (modo == 2) {
          colorActual = color(255, 100, 200); // rosa
        } else if (modo == 1) {
          colorActual = color(0, 255, 0); // verde
        } else {
          colorActual = 255; // blanco
        }
      }

      fill(colorActual);
      noStroke();

      // función propia con parámetros que no retorna valor
      dibujarForma(posX, posY, tam, alto, modo);
    }

    posX += tam;
    columna++;
  }
}

// Función propia que no retorna valor
// Dibuja círculos o rectángulos según el modo 
void dibujarForma(float posX, float posY, float tam, float alto, int modoActual) {
  if (modoActual == 2) {
    ellipse(posX + tam / 2, posY + alto / 2, tam, alto);
  } else {
    rect(posX, posY, tam, alto);
  }
}

//cada click es un cambio
void mousePressed() {
  modo++;
  if (modo > 2) {
    modo = 0;
  }
}

//reinicio con v
void keyPressed() {
  if (key == 'v' || key == 'V') {
    modo = 0;
  }
}
