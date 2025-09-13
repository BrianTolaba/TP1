/**
*@author: Tolaba Brian Ezequiel
*
*/
PVector coor; /**son las cordenas para el obstaculo*/
  
int alto = 50; /**alto de la caja*/
int ancho = 50;/**ancho de la caja */
int velocidad = 3;/**la velocidad para el movimiento de la caja*/
color colorCaja = #A2731A;

void setup() {
  /**Lienzo*/
  size(500, 500);
  /**Valores iniciales para las coordenadas de la caja*/
  coor = new PVector(0, height/2);
  
}

void draw() {
  background(0); /**Color del fondo del lienzo */
  
  /**Caja*/
  stroke(255,0,0);
  fill(colorCaja);
  rect(coor.x, coor.y, alto, ancho);
  /**Linea simulando un suelo*/
  stroke(255);
  line(0,300,width,300);
  /**Llamado al metodo mover*/
  mover();
  
}
/** Metodo para el movimiento de la caja*/
public void mover() {
  //primer desplazamiento es hacia la derecha
  coor.x += velocidad;
  //cambiar de direccion
  if (coor.x <= 0 || coor.x + ancho >= width) {
    velocidad *= -1;
  //cambio de color al chocar con los bordes del lienzo
    cambiarColor();
  }
  }
public void cambiarColor(){
  colorCaja = color(random(255),random(255),random(255));
}
