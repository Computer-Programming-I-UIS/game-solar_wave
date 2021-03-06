/*****************************************************
 ------------------------SOLAR WAVE------------------------
 Creadoras: Ashely Amaya - 2192294
 Karen Prada - 2192300
 
 Descripción: El sol ha alcanzado el punto máximo de radiación ultravioleta, provocando graves daños como la destrucción de hábitats 
 y la extinción de especies, por reacción tardía y desinterés por parte de la raza humana. Paco, el oso polar, es uno de 
 los pocos supervivientes sobre la faz de la tierra, que encuentra un mapa que te guiará al único "lugar seguro", para ello 
 debes evitar la radiación (llamas) y enfrentarte a diferentes pruebas (minijuegos ) hasta llegar a su destino.
 
 *Requiere libreria Minim
 *****************************************************/
import ddf.minim.*;
mini oso;
osop principal;
Llamas[] llamitas = new Llamas[7];

int cantidadCartas = 8;
int numerosAsignados[] = new int[cantidadCartas];
Cartica[] cartas = new Cartica[cantidadCartas];
int cartaRevelada1 = 10, cartaRevelada2 = 10;
int acier=0;
ArrayList<Obstaculo> llamitasP= new ArrayList<Obstaculo>();
PImage fondom1, fondop, sol, fondogo, pezg, fondop2, menu, titulo, fondop3, iglu, osop, fondoc, pan, map, c1, c2, p1, p2, p3, h1, h2, pezmin, h3, fondof1, fondof2, fondof3,pacofin,places;
int  velocidadOso;
int numJuego, nextGame = 7;
Minim minim;
music miMusica;
float x=0;
int X, p=0  ;  
float pxi, pyi=150, rad=290, radiop=120, posiX,posiY=500;
void setup() {
  size(800, 600);
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
  p3 = loadImage("p3.png");
  h1 = loadImage("h1.png");
  h2 = loadImage("h2.png");
  h3 = loadImage("h3.png");
  pezmin=loadImage("pezmini.png");
  fondof1=loadImage("fondofin1.jpeg");
  fondof2=loadImage("fondofin2.jpeg");
  fondof3=loadImage("fondofin3.jpeg");
  pacofin=loadImage("pacoasalvo.png");
places=loadImage("places.png");
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));
  }
  oso = new mini(390, 450);
  velocidadOso=4;

  principal = new osop (300, 400);

  for (int indice2 = 0; indice2 < cantidadCartas; indice2++ ) {
    numerosAsignados[indice2] = 0;
  }

  int cantidad, numeroAsignar;
  println("Inicio");
  for (int indice = 0; indice < (cantidadCartas/2); indice ++) {

    do {
      cantidad = 0 ;
      numeroAsignar = constrain(round(random(0.5, 4.5)), 1, 4);
      // Verificar que no ha sido asignado
      for (int indice2 = 0; indice2 < cantidadCartas; indice2++ ) {
        if (numeroAsignar == numerosAsignados[indice2])
          cantidad++;
      }
    } while (cantidad > 1);
    println("indice = " + str(indice));
    cartas[indice] = new Cartica(indice*150 + (indice+1)*40, 40, 150, 200, numeroAsignar);
    numerosAsignados[indice] = numeroAsignar;


    println(numerosAsignados);


    do {
      cantidad = 0 ;
      numeroAsignar = constrain(round(random(0.5, 4.5)), 1, 4);
      // Verificar que no ha sido asignado
      for (int indice2 = 0; indice2 < cantidadCartas; indice2++ ) {
        if (numeroAsignar == numerosAsignados[indice2])
          cantidad++;
      }
    } while (cantidad > 1);
    cartas[indice+4] = new Cartica(indice*150 + (indice+1)*40, 320, 150, 200, numeroAsignar);
    numerosAsignados[indice+4] = numeroAsignar;

    println(numerosAsignados);
    println(" ");
  }

  println("Fin");
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
    mini2();   
    break;
  case 9: 
    frameRate(60);
    gameover(oso);  
    break;
  case 10:
    win(oso);   
    break;
  case 11:
    creditos();  
    break;
  case 12:
    howtoplay();
    break;
  case 13:
    lastfondo();
    break;
  case 14:
    win2(oso);
    break;
    case 15:
    fin();
    break;
  default:

    break;
  }
}
