//variables de enemigo

//array de enemigo

float[] x_enemies, y_enemies; 
int[] enemyTargets;
int numEne = 10;
int enemyCount1 = 0;
int enemyCount2 = 0;

void setupEne()
{
  //crear sitios para enemigosy los tipos de target que van a coger
  x_enemies = new float[numEne];
  y_enemies = new float[numEne];
  enemyTargets = new int[numEne];
  
  //pasar for el array para crear los enemigos
  for (int i = 0; i < x_enemies.length; i++) 
  {
    
    //Spawn enemigos aleatoriamente
    float eneSpawn = random(1);
    
    //spawn enemigos en los bordes de la pantalla
    if (eneSpawn <= 1 && eneSpawn > 0.75)
    {
      x_enemies[i] = random(width);
      y_enemies[i] = 0;
    }
    else if (eneSpawn <= 0.75 && eneSpawn > 0.5)
    {
      x_enemies[i] = 0;
      y_enemies[i] = random(width);
    } 
    else if (eneSpawn <= 0.5 && eneSpawn > 0.25)
    {
      x_enemies[i] = height;
      y_enemies[i] = random(width);
    }
    else
    {
      x_enemies[i] = random(height);
      y_enemies[i] = width;
    }
    
    //decidir aleatoriamente los target de cada enemigo
     float decideEne = random(1);
    if (decideEne < 0.5) 
    {
      if (enemyCount1 <= enemyCount2) //para que la cantidad de enemigos que va hacia mascota1 sea mas o menos igual que mascota2 cumpliendo 1/4 para los dos
     {
        enemyTargets[i] = 0; // Perseguir mascota1
        enemyCount1++;
     }
     else
     {
       enemyTargets[i] = 1; // Perseguir mascota2
       enemyCount2++;
     }
    } 
    else 
    {
      enemyTargets[i] = 2; // Huir del jugador
    } 
  }
}


//dibujar enemigo constantemente
void drawEnemies() 
{
  for (int i = 0; i < numEne; i++) 
  {
    //nueva variable para facilitar calculo
    float targetX, targetY;
    
    if (enemyTargets[i] == 0) 
    {
      //target igual a mascota1
      targetX = x_mas1;
      targetY = y_mas1;
    } 
    else if (enemyTargets[i] == 1) 
    {
      //target igual a mascota2
      targetX = x_mas2;
      targetY = y_mas2;
    } 
    else 
    {
      //target es escapar
      targetX = 2 * x_enemies[i] - x_pj;
      targetY = 2 * y_enemies[i] - y_pj;
    }
    
    // calculos para mover el enemigo en cualquier de las 3 formas
    x_enemies[i] = (1.0 - 0.2 * alfa) * x_enemies[i] + 0.2 * alfa * targetX;
    y_enemies[i] = (1.0 - 0.2 * alfa) * y_enemies[i] + 0.2 * alfa * targetY;
    
    // Limitar las posiciones de los enemigos dentro de la pantalla
    x_enemies[i] = constrain(x_enemies[i], 0, width - 30);
    y_enemies[i] = constrain(y_enemies[i], 0, height - 30);
    
    // Dibujar el enemigo
    fill(255, 0, 0);
    ellipse(x_enemies[i], y_enemies[i], 10, 10);
  }
 }
  
