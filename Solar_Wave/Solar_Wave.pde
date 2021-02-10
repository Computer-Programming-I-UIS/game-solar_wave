//Juego xd
mini oso;
Llamas[] llamitas = new Llamas[7];
PImage im1, fondom1, fondop,im2;
int posicion, velocidad, tipo;
boolean colision = false; 
float x=0;
void setup() {
  size(800, 600);
  //frameRate(5);
  fondom1 = loadImage ("Iglu.png");
  im1 = loadImage("osito mini.png");
  im2 = loadImage ("osito quemado.png");
  //fondop= loadImage("Fondop.png"); 
  oso = new mini(im1, 390, 450);
  //PImage llamitas= new Llamas(loadImage ("llamitas.png"),80,posE,pos);
  
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));

    //posE-=55;
    //llamitas[i]= new Llamas(llamitas,80,posE,pos);
//pos++;  
}
  oso = new mini(im1, 390, 450);
  posicion=2;
  velocidad=2;
}
void draw() {
  background(fondom1);
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i].caer();
    llamitas[i].display();
    llamitas[i].colision(oso);
  }
    x+=0.1;
   float s= map(x,0,60,0,width+20);
   noStroke();
   fill(s/2,255,0);
   rect(0,0,s,height/12);
   if(s>=width+20){
     //imagen
   }
 // oso.mostrar();
  oso.move();
  
  /*
  switch(juego) {
     case 0: //
       draw_miniGame1();
       break;
     case 1: //
       draw_miniGame1();
       break;
    
    
  }
  
  */
}
void keyPressed () {
  if (keyCode==RIGHT) {
    oso.cambio.x=posicion;
  }
  if (keyCode==LEFT) {
    oso.cambio.x=-posicion;
  }
  
}
