//Variables
float x_pj, y_pj, x_enemy, y_enemy, x_mascota, y_mascota;
float alfa;

void setup()
{
  //ventana
  size(1400, 1400);
  
  x_enemy = width / 20;
  y_enemy = height / 20;
  x_mascota = width / 2;
  y_mascota = height / 2;
  
  alfa = 0.1;
 
}


//draw
void draw()
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
  
}
