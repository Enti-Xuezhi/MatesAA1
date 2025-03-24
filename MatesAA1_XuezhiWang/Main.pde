//main

//variable
boolean gameOver = false;
int score = 0;
float alfa = 0.1;

//setup
void setup()
{
  size(1400, 1400);
  lastTime = millis();
  
  setupPJ();
  setupMas();
  setupEne();
  setupPow();
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
    drawPowerUp();
    checkColi();
    displayHUD();
    drawTime();
    
     if (playerLives <= 0) 
    {
      gameOver = true; 
    }
  }
  else 
  {
    textSize(32);
    fill(255);
    textAlign(CENTER, CENTER);
    text("Game Over", width / 2, height / 2);
  }
}
