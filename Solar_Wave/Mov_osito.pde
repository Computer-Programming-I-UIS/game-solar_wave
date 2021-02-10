class mini { //Clase 
  PImage im3;
  PVector center, cambio;  
  int alto, ancho;
  int radio = 40;
  mini (PImage oso, int x, int y)
  {
    im3=oso;
    alto=im3.height;
    ancho=im3.width;
    center = new PVector (x, y);
    cambio = new PVector (0, 0);
   
  }
  void mostrar () {
    image(im1, center.x, center.y);
    fill(0);
    text(center.x,740,550);
    text(center.y,670,550);
    stroke(10);
    noFill();
    ellipse(center.x+radio,center.y+radio,80,80);
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
