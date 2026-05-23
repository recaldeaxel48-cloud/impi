PImage fondo; // fondo estrellas 
PImage starwars; // logo starwars
PImage nave1; 
PImage nave2;
PImage nave3;
PImage nave4;
PImage nave5;

float yFondo = 0;
float alphastarwars = 0;

float yNave1 = -200;
float yText1 = 600;

float yNave2 = 600;
float yText2 = 800;

float xNave3 = -300;
float xText3 = 980;

float yNave4 = -400;
float yText4 = -200;

int contador = 0;
int menu = 0;

float yTextoFinal = 900;

float alphaNave5 = 0;
float alphaTexto5 = 0;

PFont fuente;

Escena escena; //

void setup() {

  size(640, 480); // pantalla
  textAlign(CENTER, CENTER); // centrar texto

  fondo = loadImage("b8c1d15d-c707-434c-b920-1e41238eb80d.png");
  starwars = loadImage("7ecb0884-7427-4fdf-838c-84d0b79293fb.png");

  nave1 = loadImage("Destructor.png");
  nave2 = loadImage("Fighter.png");
  nave3 = loadImage("Milenario.png");
  nave4 = loadImage("Slave.png");
  nave5 = loadImage("wing.png");

  fuente = createFont("Impact", 128);
  textFont(fuente);

  escena = new Escena();
}

void draw() {

    contador++; // sumador frame

if (menu == 0) {
    
    // doble fondo loop
    image(fondo, 0, yFondo);
    image(fondo, 0, yFondo - fondo.height); 

    yFondo += 0.9;

if (yFondo >= fondo.height) {
    yFondo = 0;
    
  }
    //logo starwars
if (contador > 100) {

     tint(255, alphastarwars);
     image(starwars, 175, 160, 300, 200);
     noTint();

if (alphastarwars < 255 && contador < 330) {
    alphastarwars += 2;
      
   }

if (contador > 330) {
    alphastarwars -= 5;
      
   }
   }

if (contador > 400) {
     //nave 1
     image(nave1, 180, yNave1, 300, 150);
     fill(255);
     textSize(20);
     text("Gigantesca nave de guerra del Imperio. Funciona como base militar móvil \n y puede transportar cientos de cazas TIE. Generalmente está comandada \n por oficiales imperiales como Grand Moff Tarkin o Darth Vader.", width/2,yText1);

if (contador < 700) {

if (yNave1 < 110) {
    yNave1 += 2;
        
    }

if (yText1 > 300) {
    yText1 -= 2;
        
    }
    }

if (contador > 700) {
    yNave1 -= 2;
    yText1 += 2;
      
    }
    }

if (contador > 800) {
     //nave 2
     image(nave2, 180, yNave2, 300, 150);
     fill(255);
     textSize(18);
     text("Caza imperial muy veloz y maniobrable. Se reconoce por sus enormes paneles \n solares negros a los costados. Lo utilizan los pilotos del Imperio Galáctico, \n incluyendo Darth Vader en su versión especial TIE Advanced.", width/2, yText2);

if (contador < 1200) {

if (yNave2 > 103) {
    yNave2 -= 2;
       
     }

if (yText2 > 300) {
    yText2 -= 2;
        
     }
     }

if (contador > 1200) {
    yNave2 -= 2;
    yText2 -= 2;
      
     }
     }
     //nave 3
     fill(255);
     textSize(18);
     text("La nave más icónica de Star Wars. Es un carguero YT-1300 extremadamente \n modificado, famoso por ser rapidísimo y muy resistente. Conductor principal: \n Han Solo. También la pilotan Chewbacca, Lando Calrissian y Rey.", xText3, 300);

if (contador > 1290) {

     image(nave3, xNave3, 100, 300, 150);

if (xNave3 < 180) {
    xNave3 += 3;
      
     }

if (xText3 > 320) {
    xText3 -= 4;
      
     }
     }

if (contador > 1700) {
    xNave3 += 3;
    xText3 -= 3;
    
     }
     //nave 4
     fill(255);
     textSize(18);
     text(
    "Nave de cazarrecompensas clase Firespray-31. Tiene un diseño único \n vertical y armamento muy poderoso. Conductor principal: \n Boba Fett. Originalmente perteneció a Jango Fett.", width/2, yText4);

    if (contador > 1780) {

     image(nave4, 180, yNave4, 300, 150);

if (yNave4 < 100) {
    yNave4 += 3;
      
     }

if (yText4 < 300) {
    yText4 += 3;
      
     }

if (contador > 2200) {
    yNave4 += 3;
    yText4 += 3;
      
     }
     }
    
if (contador > 2300) {
     //nave 5
     tint(255, alphaNave5);
     image(nave5, 170, 100, 300, 150);
     noTint();

if (alphaNave5 < 255) {
    alphaNave5 += 2;
      
     }
     }

if (contador > 2300) {

     fill(255, alphaTexto5);
     textSize(18);
     text("El caza principal de la Alianza Rebelde. Tiene alas en forma de “X” y \n está diseñado para combates espaciales rápidos. Conductor más famoso: \n Luke Skywalker. También lo usan muchos pilotos rebeldes de la Resistencia.", 320, 300);

if (alphaTexto5 < 255) {
    alphaTexto5 += 2;
      
     }

if (contador > 2600) {
    alphaTexto5 -= 5;
    alphaNave5 -= 5;
      
     }
     }
    
if (contador > 2700) {
     //outro
     fill(245, 195, 44);
     textSize(16);
     text(
      "Hace mucho tiempo, en una galaxia muy, muy lejana... \n La guerra finalmente había llegado a su fin.\n Los últimos ecos de la batalla desaparecían lentamente entre las estrellas, \n mientras los restos de antiguas flotas flotaban en silencio\n alrededor de planetas destruidos por años de conflicto. \n La galaxia, cansada del miedo y la oscuridad, \n comenzaba lentamente a reconstruirse. \n Los pueblos que alguna vez vivieron ocultándose del Imperio \n volvían a caminar libres bajo los soles de sus mundos. \n Los viejos soldados dejaban atrás sus armas, \n y los niños crecían escuchando historias sobre héroes, \n Jedi y rebeldes que dieron todo por la libertad. \n Pero incluso después de la victoria, \n la Fuerza seguía moviéndose de maneras misteriosas. \n En los rincones más lejanos del universo, \n antiguos secretos permanecían ocultos. \n Templos olvidados descansaban bajo océanos, \n desiertos infinitos y montañas congeladas, \n esperando ser descubiertos una vez más. \n Porque la historia de la galaxia nunca termina realmente. \n Cada generación trae nuevos héroes. \n Nuevos enemigos. \n Nuevas batallas. \n Y aunque el lado oscuro siempre intentará regresar, \n también lo hará la esperanza. \n Las estrellas seguirán brillando. \n Las naves seguirán cruzando el hiperespacio. \n Y la Fuerza continuará uniendo el destino de todos los seres vivos. \n Las leyendas de Luke Skywalker, \n Leia Organa, \n Han Solo \n y los Jedi del pasado \n vivirán eternamente entre las historias contadas de planeta en planeta. \n Porque mientras alguien mire al cielo soñando con aventuras, \n la llama de la Rebelión jamás se apagará. \n Y así... \n mientras la galaxia entra en una nueva era, \n un pequeño destello azul aparece en la inmensidad del espacio. \n Una última señal. \n Una última esperanza. \n La Fuerza estará contigo... \n siempre. \n FIN", width/2, yTextoFinal);
     yTextoFinal -= 1.2;
    
     }
    
if (contador > 3778) {
     //boton reiniciar
     fill(245, 195, 44);
     rect(220, 400, 200, 50, 15);
     fill(0);
     textSize(24);
     text("REINICIAR", 320, 425);
    
  
     }
     }
     }

void mousePressed() {

if (contador > 3400 &&
     mouseX > 220 && mouseX < 420 &&
     mouseY > 400 && mouseY < 450) {

     contador = 0;

     yFondo = 0;
     alphastarwars = 0;
     yNave1 = -200;
     yText1 = 600;
     yNave2 = 600;
     yText2 = 800;
     xNave3 = -300;
     xText3 = 980;
     yNave4 = -400;
     yText4 = -200;
     yTextoFinal = 900;
     alphaNave5 = 0;
     alphaTexto5 = 0;
     
     }
     }

class Escena {

     }
