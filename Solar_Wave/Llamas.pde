class Llamas {
  float x=random(width);
  float y=random(-500, -10);
  float speedY=random(3, 8);
  PVector centro;
  PImage llamitas;
  float r= random (0, 20);
  float rand = map(r, 0, 20, 4, 10);
  float px;
  int r1=30;
  int r2=50;
  int radio = 25;
  boolean peligro = false;
  //centro = new PVector (x, y);

  Llamas(PImage picllamas  ) {
    llamitas =picllamas;
  }

  boolean getPeligro() {
    return peligro;
  }

  void caer() {
    y = y + speedY;
    // speedY = speedY +0.1;
    if (y > height) {

      y= random(-100, -80);
      x=random(width);
      speedY= map(r, 0, 20, 4, 10);
    }
  }
  void display() {
    image(llamitas, x, y);
    noStroke();
    ellipseMode(CENTER);
    if (peligro)
      fill(#44FAEC);
    else 
    noFill();
    ellipse(x+radio, y+radio, 30, 30);
  }

  void colision (mini osoEnPeligro) {
    float d1= dist(this.x+this.radio, this.y+this.radio, osoEnPeligro.center.x+osoEnPeligro.radio, osoEnPeligro.center.y+osoEnPeligro.radio);
    //text(d1, 100, 550);
    if (d1 < radio + osoEnPeligro.radio) { 
      peligro = true;
    } else 
    peligro = false;
  }
}
