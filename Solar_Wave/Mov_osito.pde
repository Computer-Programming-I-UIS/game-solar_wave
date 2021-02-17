class mini { //Clase 
  PImage im1, im2;
  PVector center, cambio;  
  int alto, ancho;
  int radio = 40;
  boolean est=true;
  mini ( int x, int y)
  {
    im1 = loadImage("osito mini.png");
    im2 = loadImage ("osito quemado.png");
    alto=im1.height;
    ancho=im1.width;
    center = new PVector (x, y);
    cambio = new PVector (0, 0);
  }
  
  //Setters, "colocador"
  void setEst(boolean newEst) {
    est = newEst;
  }
  
  void mostrar () {
    // se pregunta el estado del osito
    // si está vivo 
    if (est) {
      //dibujar osito vivo
      image(im1, center.x, center.y);
    } else {
      //osito muerto
      frameRate(1);
      
      
      image(im2,center.x,center.y);
    }
  }
  void move()
  {
    center.x += cambio.x;
    if (center.x>698)
      center.x=698;
    else if (center.x<10)
      center.x=10;
    center.y += cambio.y;
  }
  float getLeft() {
    return center.x - ancho/2;
  }
  float getRight() {
    return center.x + ancho/2;
  }
}
