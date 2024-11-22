class star{
  star(){
     x = -40;
     y = -40;
     radius = 20;
     outerColor = color(255,165,0);
     innerColor = color(255,200,0);
  };
  float x, y, radius, a; color outerColor, innerColor;
  void drawStar() {
    noStroke();
    translate(x, y);
  
    // Gradient effect
    for (float r = radius; r > 0; r -= 2) {
      float ratio = r / radius;
      fill(lerpColor(innerColor, outerColor, ratio));
      float angle = TWO_PI / 5;
      beginShape();
      for (int i = 0; i < 5; i++) {
        float outerX = cos(i * angle) * r;
        float outerY = sin(i * angle) * r;
        vertex(outerX, outerY);
        float innerX = cos(i * angle + angle / 2) * r*0.5;
        float innerY = sin(i * angle + angle / 2) * r*0.5;
        vertex(innerX, innerY);
      }
      endShape(CLOSE);
    }
    stroke(0);
    translate(-x, -y);
  }
}
