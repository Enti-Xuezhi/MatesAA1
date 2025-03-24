//calculos de colision

void checkColi()
{
  // mirar collisiones con enemigo
  for (int i = 0; i < x_enemies.length; i++) 
  {
    float dx = x_pj - x_enemies[i]; 
    float dy = y_pj - y_enemies[i]; 
    float distance = sqrt(dx * dx + dy * dy); // usando Euclidean para calcular el distancia

    if (distance < 15) 
    { 
      score += 10; 
      x_enemies[i] = -1; 
      y_enemies[i] = -1;
      break;
    }
  }

  
  //mirar colisiones con power ups
  for (int i = 0; i < x_powerUps.length; i++) {
    if (x_powerUps[i] != -1) {
      float dx = x_pj - x_powerUps[i];
      float dy = y_pj - y_powerUps[i];
      float distance = sqrt(dx * dx + dy * dy); 

      if (distance < 15) { 
        x_powerUps[i] = -1; 
        y_powerUps[i] = -1;
        score += 20; 
        break;
      }
    }
  }

 
 //mirar colision de mascota 2 con enemigo
  for (int i = 0; i < x_enemies.length; i++) {
    if (x_enemies[i] != -1) {
      float dx = x_mas2 - x_enemies[i];
      float dy = y_mas2 - y_enemies[i];
      float distance = sqrt(dx * dx + dy * dy); 

      if (distance < 15) { 
        mas2Hp -= 10; 
        if (mas2Hp <= 0) {
          playerLives--;
          mas2Hp = 100; 
        }
        break;
      }
    }
  }
}
