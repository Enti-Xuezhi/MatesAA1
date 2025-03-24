//variables de pj 

float x_pj, y_pj; // position del jugador
int playerLives = 3;


void setupPJ()
{
  x_pj = width / 2;
  y_pj = height / 2;
}

void drawPJ() //dibujar jugador
{
//jugador seguira al mouse 

  x_pj = mouseX;
  y_pj = mouseY;
  
//dibujar jugador
  fill(0, 0, 255);
  ellipse(x_pj, y_pj, 20, 20);
}
