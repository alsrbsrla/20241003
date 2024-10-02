void gear(float pos_x, float pos_y, float ratio) {
  noStroke();
  fill(100);

  // gear tooth and head
  rect(pos_x - 25 * ratio, pos_y - 120 * ratio, 50 * ratio, 240 * ratio);// gear tooth 1
  rect(pos_x - 120 * ratio, pos_y - 25 * ratio, 240 * ratio, 50 * ratio);// gear tooth 2

  pushMatrix();
  translate(pos_x, pos_y);
  rotate(PI / 4);
  rect(-25 * ratio, -120 * ratio, 50 * ratio, 240 * ratio);// gear tooth 3
  rect(-120 * ratio, -25 * ratio, 240 * ratio, 50 * ratio);// gear tooth 4
  popMatrix();

  circle(pos_x, pos_y, 200 * ratio);// head

  // face
  stroke(0);
  strokeWeight(2 * ratio);
  fill(128);
  circle(pos_x, pos_y, 150 * ratio);// face

  // eye
  fill(50, 0, 0);
  circle(pos_x - 30 * ratio, pos_y - 25 * ratio, 35 * ratio);// left eye 1
  circle(pos_x + 30 * ratio, pos_y - 25 * ratio, 35 * ratio);// right eye 1
  noStroke();
  fill(255);
  circle(pos_x - 25 * ratio, pos_y - 28 * ratio, 10 * ratio);// left eye 2
  circle(pos_x + 35 * ratio, pos_y - 28 * ratio, 10 * ratio);// right eye 2

  // mouth
  fill(100, 0, 0);
  circle(pos_x, pos_y + 30 * ratio, 30 * ratio);// mouth
  fill(200, 0, 0);
  ellipse(pos_x, pos_y + 40 * ratio, 20 * ratio, 10 * ratio);// tongue
}
