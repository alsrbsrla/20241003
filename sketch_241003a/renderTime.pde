void renderTime(int _x, int _y, int size) {
  if (gameOver == false) {
    frames++;
    boolean everySeconds = (frames % 60) == 0;
    if (everySeconds) {
      seconds++;
    }
    boolean isOdd = (seconds % 2) != 0;
    if (isOdd) backgroundColor = 190;
    else backgroundColor = 210;
  }
  fill(0);
  textSize(size);
  text("score: " + seconds + " sec", _x, _y);
}
