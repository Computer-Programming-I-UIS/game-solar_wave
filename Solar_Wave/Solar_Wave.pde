import ddf.minim.*;
//Juego xd
mini oso;
osop principal;
Llamas[] llamitas = new Llamas[1];
PImage fondom1, fondop, sol, fondogo, pezg, fondop2, menu, titulo, fondop3, iglu, osop, fondoc, pan, map, c1, c2;
int  velocidadOso;
boolean colision = false; 
int numJuego = 0;
Minim minim;
music a1, a2, a3, a4, a5;
float x=0;
void setup() {
  size(800, 600);
  //frameRate(5);
  minim = new Minim(this);
  a1 = new music(minim, "historia.mp3");
  a2 = new music(minim, "juegop.mp3");
  a3 = new music(minim, "minijuego.mp3");
  a4 = new music(minim, "gameo.mp3");
  a5 = new music(minim, "ganar.mp3");
  /*if(numJuego==0){
   a1.start();
   }
   if(numJuego!=0){
   a1.stop();
   }*/
  /*a3.start();
   a4.start();
   a5.start();*/
  fondom1 = loadImage("Iglu.png");
  sol = loadImage("sol.png");
  fondogo = loadImage ("fondo game over.png");
  pezg = loadImage("pez gana.png");
  fondop= loadImage("fondoj-1.png");
  fondop2=loadImage("fondoj-2.png");
  fondop3=loadImage("fondoj-3.png");
  menu= loadImage("fmenu.png");
  titulo = loadImage("swave.png");
  iglu=loadImage("iglujuego.png");
  osop = loadImage("Oso prin00.png");
  fondoc = loadImage ("Fondop.png");
  pan = loadImage("pantallita.png");
  map=loadImage("mapita.png");
  c1=loadImage("pegi3.png");
  c2=loadImage("pegit.png");
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));
  }
  oso = new mini(390, 450);
  velocidadOso=4;

  principal = new osop (300, 400);
}

void draw() {

  switch (numJuego) {
  case 0:
    h1();
    break;
  case 7:
    h2();
    // Aquí pondría mi juego 2, si tuviese uno :c
    break;
  case 1:
    menu();
    a1.start();
    //a2.stop();
    break;
  case 2:
    frameRate(60);
    juegoprin();
    //  text("Fish",750,100);
    //p=round(puntaje+=0.1);
    //a1.stop();
    //a2.start();
    // a2.start();
    break;
  case 3:
    frameRate(60);
    jugando();
    // a3.start();
    //a1.stop();
    break;
  case 4:
    frameRate(60);
    gameover(oso);
    break;
  case 5: 
    win();
    break;
  case 6:
    creditos();
    break;
  //case 7:
    //h2();
    // Aquí pondría mi juego 2, si tuviese uno :c
    //break;
  default:

    break;
  }
}
