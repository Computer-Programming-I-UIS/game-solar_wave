class Cartica {
  // Atributos
  int posX, posY, ancho, alto;
  PImage imagen = new PImage();
  boolean mostrando = false, desaparecer = false;
  int numeroImagen;

  //Constructor
  Cartica(int posX, int posY, int ancho, int alto, int numeroImagen) {

    this.posX = posX;
    this.posY = posY;
    this.ancho = ancho;
    this.alto = alto;
    this.numeroImagen = numeroImagen;
    imagen = loadImage("data/Imagen"+ str(numeroImagen) + ".png");
  }

  //Métodos
  void dibujar() {
    if (!desaparecer) {
      fill(255);
      rect(posX, posY, ancho, alto);
      if (mostrando) {
        image(imagen, posX, posY);
      }
      if (mousePressed && mouseX < (posX+ancho) && mouseX > posX && mouseY > posY && mouseY < (posY+alto)) {
        mostrando = true;
        mousePressed = false;
      }
    }
  }
}
