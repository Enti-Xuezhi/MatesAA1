//variable de power up

float[] x_powerUps, y_powerUps; // positiones de power up


//setup de power up
void setupPow()
{
  //crear 3 power ups y 3 positiones de X y Y
  x_powerUps = new float[3];
  y_powerUps = new float[3];
  
  //dar diferente valor
  for (int i = 0; i < x_powerUps.length; i++) 
  {
    x_powerUps[i] = random(width);
    y_powerUps[i] = random(height);
  }
}

//dibujar power ups
void drawPowerUp()
{
  for (int i = 0; i < x_powerUps.length; i++) 
  {
    if (x_powerUps[i] != -1) {
      // Draw power-up
      fill(255, 0, 255);
      ellipse(x_powerUps[i], y_powerUps[i], 10, 10);
    }
  }
}
