class mini { //Clase 
  PImage im3;
  PVector center, cambio;  
  int alto, ancho;
  mini (PImage oso, int x, int y)
  {
    im3=oso;
    alto=im3.height;
    ancho=im3.width;
    center = new PVector (x, y);
    cambio = new PVector (0, 0);
  }
  void mostrar () {
    image(im3, center.x, center.y);
     stroke(10);
    noFill();
    ellipse(center.x+39,center.y+20,60,50);
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
