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
  //centro = new PVector (x, y);

  Llamas(PImage picllamas  ) {
    llamitas =picllamas;
    oso = new mini(im1, 390, 450);
  }

  void caer() {
    y = y + speedY;
    speedY = speedY +0.1;
    if (y > height) {

      y= random(-100, -80);
      speedY= map(r, 0, 20, 4, 10);
    }
  }
  void display() {
    image(llamitas, x, y);
    stroke(10);
    ellipseMode(CENTER);
    ellipse(x+25, y+26, 30, 30);
  }

  void colision () {
    float d1= dist(x+25, y+26,oso.center.x, oso.center.y);
  if (d1 < r1+r2 ) { 
    fill(#44FAEC);

    }
    
   /*float distancia =sqrt (((x+25)- oso.center.x)((x+25)- oso.center.x)) +(((y+26)-oso.center.y)*((y+26)-oso.center.y));
    if ( distancia < r1 + r2 ) {
    //Colisión detectada
    fill(#44FAEC);
  }*/
    //println(oso.center.x);
    
  }
}
