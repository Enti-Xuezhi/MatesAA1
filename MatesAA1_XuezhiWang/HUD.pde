//todos display

int timer = 60000;
int lastTime = 0;

void displayHUD() 
{
  //Enseñar los datos sobre jugador
  fill(255);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Lives: " + playerLives, 10, 10);
  text("Score: " + score, 10, 30);
  text("Time: " + timer / 1000, 10, 50);
}

void drawTime()
{
  int currentTime = millis();
  int deltaTime = currentTime - lastTime;
  lastTime = currentTime;

    timer -= deltaTime;
  if (timer <= 0)
  {
    playerLives--; 
    timer = 60000; 
  }
}
