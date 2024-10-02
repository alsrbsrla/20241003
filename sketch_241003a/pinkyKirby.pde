
void pinkyKirby(float x, float y, float scale) {
  stroke(0, 0, 0);

  // feet
  // fill(164, 38, 28); // Red color
  fill(100);
  ellipse(x - 6 * scale, y + 8 * scale, 8 * scale, 5 * scale); // Left foot
  ellipse(x + 6 * scale, y + 8 * scale, 8 * scale, 5 * scale); // Right foot

  // arms
  // fill(kirbyColor);
  fill(128);
  ellipse(x - 10 * scale, y + 2 * scale, 6 * scale, 5 * scale); // Left arm
  ellipse(x + 10 * scale, y + 2 * scale, 6 * scale, 5 * scale); // Right arm

  // body
  // fill(kirbyColor);
  circle(x, y, 20 * scale);

  noStroke();

  // eyes
  fill(70, 0, 0); // Black color eyes
  ellipse(x - 2.5 * scale, y - 3 * scale, 2.7 * scale, 6 * scale); // Left eye outline
  ellipse(x + 2.5 * scale, y - 3 * scale, 2.7 * scale, 6 * scale); // Right eye outline

  fill(63, 72, 204); // Blue color eyes
  ellipse(x - 2.5 * scale, y - 3 * scale, 2.2 * scale, 4.5 * scale); // Left eye
  ellipse(x + 2.5 * scale, y - 3 * scale, 2.2 * scale, 4.5 * scale); // Right eye

  fill(70, 0, 0); // Dark color eyes
  ellipse(x - 2.5 * scale, y - 3.5 * scale, 2.3 * scale, 3.5 * scale); // Left eye
  ellipse(x + 2.5 * scale, y - 3.5 * scale, 2.3 * scale, 3.5 * scale); // Right eye

  fill(255); // White color eyes
  ellipse(x - 2.5 * scale, y - 4.5 * scale, 1.4 * scale, 2.2 * scale); // Left eye
  ellipse(x + 2.5 * scale, y - 4.5 * scale, 1.4 * scale, 2.2 * scale); // Right eye

  // cheeks
  fill(255, 105, 180); // Pinkish color
  ellipse(x - 6.5 * scale, y - 1.0 * scale, 3.0 * scale, 2.3 * scale); // Left cheek
  ellipse(x + 6.5 * scale, y - 1.0 * scale, 3.0 * scale, 2.3 * scale); // Right cheek

  // mouth
  fill(153, 0, 0);
  arc(x, y + 2 * scale, 4 * scale, 3 * scale, 0, PI);
  fill(255, 99, 71);
  arc(x, y + 2.5 * scale, 3 * scale, 2 * scale, 0, PI);
}
