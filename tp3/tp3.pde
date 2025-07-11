// Gomez Lucia 122762/5  
//comision1
//https://youtu.be/Vo5nS1-IbAk
 
PImage  imgtp3;   
 
int modo = 0;  //Modo 0 (Grilla blanca y negra) , Modo 1 (Grilla roja y verde) , Modo 2 (Ellipses rosas y violetas) 
int filas = 15;    

void setup() {
  size (800, 400); 
  imgtp3 = loadImage("imgtp3.jpeg"); 
}

//funcion propia que retorna un valor
float calcularTam(float distX, float maxDist) {
  return map(distX, 0, maxDist, 3, 40);
}

  void draw() {
  background(255);  
  image(imgtp3, 0, 0, width / 2, height);

  float alto = height / float(filas);

  float centroX = width * 0.75;
  float maxDist = width / 2;
  
int columna = 0;

//for anidado       
for(float posX = width / 2; posX < width; columna++) {
  float distX = dist(posX, 0, centroX, 0); 
  float tam = calcularTam(distX, maxDist);
  for (int fila = 0; fila < filas; fila++) {
    float posY = fila * alto;

//Colores/forma segun el modo 

    int colorActual;
    if ((columna + fila) % 2 == 0) {
      if (modo == 2) {
        colorActual = color(150, 0, 255);
      } else if (modo == 1) {
        colorActual = color(255, 0, 0);
      } else {
        colorActual = 0;
      }
    } else {
      if (modo == 2) {
        colorActual = color(255, 100, 200);
      } else if (modo == 1) {
        colorActual = color(0, 255, 0);
      } else {
        colorActual = 255;
      }
    }

    fill(colorActual);
    noStroke();
    dibujarForma(posX, posY, tam, alto, modo);
  }

  posX += tam;
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
