class osop {
  int totalFrames=2;
  int currentFrame=0;
  int frameDivisor = 20, cntFrame = 0;
  PImage[] picoso = new PImage[totalFrames];
  boolean canJump=true, isJumping=false, osopmov=true;
  int velY=0, velX=2;
  float px, py, baseY;
  float altura=0;
int r=50; 
  float radhit=50.01;
  osop( int Px, int Py) {
    px=Px;
    baseY=Py;
    py=baseY;

    for (int j = 0; j < totalFrames; j++) {
      String osoprin = "Oso prin" + nf(j, 2) + ".png";
      picoso[j] = loadImage(osoprin);
    }
  }
  void dibujar() { // Called each frame
    image(picoso[currentFrame], px-300, py+50);
    cntFrame++;
    if (cntFrame == frameDivisor) { // called each 'frameDivisor' frames
      currentFrame = (currentFrame +1) % picoso.length;
      cntFrame = 0;
    }
    velY+=altura;
    py+=velY;
  }

  void jump() {
    if (canJump) {
      canJump=false;
      isJumping=true;
      velY=-20;
      altura=1;
    }
  }


  void land() {
    if (py >= baseY) {
      py =baseY;
      velY=0;
      altura=0;
      isJumping=false;
      canJump=true;
    }
  }
  void keyPressed() {
    if (key == ' ') {
      jump();
    }

    if ( (key == CODED) ) {

      if (keyCode ==RIGHT) {
        px += velX;
        osopmov=true;
      } else if (keyCode ==LEFT) {
        px-=velX;
      }
    }
  }
}
