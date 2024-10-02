void detectCollision(){
  if(sqrt((gearX-maruX)*(gearX-maruX)+(gearY-maruY)*(gearY-maruY))<=100*ratio) gameOver=true;
  if(sqrt((blueKirbyX-maruX)*(blueKirbyX-maruX)+(blueKirbyY-maruY)*(blueKirbyY-maruY))<=100*ratio) gameOver=true;
  if(sqrt((pinkyKirbyX-maruX)*(pinkyKirbyX-maruX)+(pinkyKirbyY-maruY)*(pinkyKirbyY-maruY))<=100*ratio) gameOver=true;
  if(gameOver==true){
    background(255,240,200);
    textSize(60);
    text("score: "+ seconds +" sec",260,450);
    textSize(100);
    fill(255,0,0);
    text("Game over",190,350);
  }
}
