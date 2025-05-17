// GOMEZ Lucia  Legajo:122762/5

PImage img1, img2, img3;

float yTitulo = -100;
float yDirector;
float xActores = 645;

String titulo = "M\nA\nT\nR\nI\nX";
String director = "Lana y Lilly Wachowski son las directoras\nde la trilogía de Matrix";
String actores = "Keanu Reeves como Neo\nLaurence Fishburne como Morfeo\nCarrie-Anne Moss como Trinity";

int botonX = 320;
int botonY = 420;
int botonR = 50;
boolean mostrarBoton = false;

void setup() {
  size(640, 480);
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");

  yTitulo = -100;
  yDirector = height + 50;
  xActores = 645;
}

void draw() {
  background(0);

  // TITULO
  if (yTitulo < height + 100) {
    image(img1, 0, 0, width, height);
    fill(0, 255, 0);
    textSize(60);
    float ancho = textWidth("M"); 
    float x = (width - ancho) / 2;
    text(titulo, x, yTitulo);
    yTitulo += 1;

  // DIRECTORAS 
  } else if (yDirector > -100) {
    image(img2, 0, 0, width, height);
    fill(255);
    textSize(34);
    float ancho = textWidth("Lana y Lilly Wachowski son las directoras");
    float x = (width - ancho) / 2;
    text(director, x, yDirector);
    yDirector -= 1;
  }
  // ACTORES 
  else {
    image(img3, 0, 0, width, height);
    fill(255, 0, 0);
    textSize(36);
    text(actores, xActores, height / 1.5);
    xActores -= 1;

    if (xActores < -textWidth(actores)) {
      mostrarBoton = true;
    }

    if (mostrarBoton) {
      fill(255);
      ellipse(botonX, botonY, botonR * 2, botonR * 2);
      fill(0);
      textSize(16);
      String textoBoton = "REINICIAR";
      float tw = textWidth(textoBoton);
      text(textoBoton, botonX - tw / 2, botonY + 5);
    }
  }
}

void mousePressed() {
  float d = dist(mouseX, mouseY, botonX, botonY);
  if (d < botonR && mostrarBoton) {
    // Reiniciar animaciones
    yTitulo = -100;
    yDirector = height + 50;
    xActores = 645;
    mostrarBoton = false;
  }
}
