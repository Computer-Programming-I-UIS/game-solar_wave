import ddf.minim.*;
//Juego xd
mini oso;
osop principal;
Llamas[] llamitas = new Llamas[1];
ArrayList<Obstaculo> llamitasP= new ArrayList<Obstaculo>();
PImage fondom1, fondop, sol, fondogo, pezg, fondop2, menu, titulo, fondop3, iglu, osop, fondoc, pan, map, c1, c2, p1, p2, /*p3,*/h1, h2, h3;
int  velocidadOso;
int numJuego = 0;
Minim minim;
music miMusica;
float x=0;
int X ;  
float pxi, pyi=150, rad=290;
void setup() {
  size(800, 600);
  //frameRate(5);
  minim = new Minim(this);
  miMusica = new music(minim);

  fondom1 = loadImage("Iglu.png");
  sol = loadImage("sol.png");
  fondogo = loadImage ("fondo game over.png");
  pezg = loadImage("pez gana.png");
  fondop = loadImage("fondoj-1.png");
  fondop2 = loadImage("fondoj-2.png");
  fondop3 = loadImage("fondoj-3.png");
  menu = loadImage("fmenu.png");
  titulo = loadImage("swave.png");
  iglu = loadImage("iglujuego.png");
  osop = loadImage("Oso prin00.png");
  fondoc = loadImage ("Fondop.png");
  pan = loadImage("pantallita.png");
  map = loadImage("mapa.png");
  c1 = loadImage("pegi3.png");
  c2 = loadImage("pegit.png");
  p1 = loadImage("p1.png");
  p2 = loadImage("p2.png");
  //p3 = loadImage("p3.png");
  h1 = loadImage("h1.png");
  h2 = loadImage("h2.png");
  h3 = loadImage("h3.png");
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));
  }
  oso = new mini(390, 450);
  velocidadOso=4;

  principal = new osop (300, 400);
}

void draw() {

  miMusica.start();
  switch (numJuego) {
  case 0:
    h1();
    break;
  case 1:
    h2();
    break;
  case 2: 
    h3();
    break;
  case 3: 
    h4();
    break;
  case 4:
    h5();
    break;
  case 5:
    menu();
    break;
  case 6:
    frameRate(60);
    juegoprin();
    break;
  case 7:
    frameRate(60);
    jugando();
    break;
  case 8:
    frameRate(60);
    gameover(oso);
    break;
  case 9: 
    win();
    break;
  case 10:
    creditos();
    break;
    //case 8:
    //h2();
    // Aquí pondría mi juego 2, si tuviese uno :c
    //break;
  case 11:
    howtoplay();
    break;
  default:

    break;
  }
}
