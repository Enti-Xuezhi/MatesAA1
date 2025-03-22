//main

//variable
boolean gameOver = false;
int score = 0;
int timer = 60000;

//setup
void setup()
{
  size(1400, 1400);
  setupPJ();
  setupMas();
  setupEne();
}

void draw()
{
  //draw background
  background(0); 
  
  //si el juego no esta acabado, sigue dibujando
  if(!gameOver)
  {
    
    drawPJ();
    drawMas1();
    drawMas2();
    drawEnemies();
    
  }
  
}



//draw
/*void draw()
{
  //color de fondo
  background(0);
  
  x_pj = mouseX;
  y_pj = mouseY;
  
  // posicion de mascota
  x_mascota = (1.0 - 1.5 * alfa) * x_mascota + 1.5 * alfa * (x_pj - 12);
  y_mascota = (1.0 - 1.5 * alfa) * y_mascota + 1.5 * alfa * (y_pj + 12);
  
  //posicion de enemy
  x_enemy = (1.0 - 0.2 * alfa) * x_enemy + 0.2 * alfa * x_pj;
  y_enemy = (1.0 - 0.2 * alfa) * y_enemy + 0.2 * alfa * y_pj;
  
  fill(0,0,255);
  ellipse(x_pj, y_pj, 20, 20);
  
  fill(255,0,0);
  ellipse(x_enemy, y_enemy, 20, 20);
  
  fill(0,255,0);
  ellipse(x_mascota, y_mascota, 15, 15);
  
}*/
