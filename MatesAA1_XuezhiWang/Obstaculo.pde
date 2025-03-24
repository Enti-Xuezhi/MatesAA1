//variables de obstaculo

float[] x_obstacles, y_obstacles; // position de obstaculo

void setupObs()
{
  //crear 6 obstaculo
  x_obstacles = new float[6];
  y_obstacles = new float[6];
  
  //crear position aleatoria
  for (int i = 0; i < x_obstacles.length; i++) 
  {
    x_obstacles[i] = random(width);
    y_obstacles[i] = random(height);
  }
}
