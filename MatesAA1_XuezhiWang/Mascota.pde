//variables de mascota

//position X y Y de mascota
float x_mas1, y_mas1; 
float x_mas2, y_mas2; 

//vida de la secunda mascota
int mas2Hp = 100;

void setupMas()
{
  //position de mascota 1 al empezar
  x_mas1 = width / 2;
  y_mas1 = 0;
  
  // position de mascota 2 al empezar
  x_mas2 = random(width);
  y_mas2 = random(height);
}

void drawMas1() //dibujar mascota 1
{
  
  //velocidad de mascota 1 persiguiendo a jugador
  x_mas1 = (1.0 - 1.5 * alfa) * x_mas1 + 1.5 * alfa * (x_pj - 12);
  y_mas1 = (1.0 - 1.5 * alfa) * y_mas1 + 1.5 * alfa * (y_pj + 12);
  
  //dibuja mascota 1
  fill(0, 150, 150);
  ellipse(x_mas1, y_mas1, 15, 15);
}

void drawMas2() //dibujar mascota 2
{
  
   //no empieza a mover hasta que distancia de mascota y pj es igual a 0
  if (dist(x_pj, y_pj, x_mas2, y_mas2) < 50) 
  {
     x_mas2 = (1.0 - 1.5 * alfa) * x_mas2 + 1.5 * alfa * (x_pj + 12);
     y_mas2 = (1.0 - 1.5 * alfa) * y_mas2 + 1.5 * alfa * (y_pj + 12);
  }
  
  //dibuja mascota 2
  fill(150, 150, 0);
  ellipse(x_mas2, y_mas2, 15, 15);
}
