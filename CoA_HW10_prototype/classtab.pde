class Siha {
  Siha() {
    x = random(width);     y = random(height);     d = random(0.5, 1); d1 = 2*d; s=1;
    r = random(128, 255); g = random(128, 255); b = random(128, 255);
    r1 = r; g1 = g; b1 = b;
    vx = random(-5, 5);
    vy = random(-2.5, 2.5);
  }
  
  float x, y, d, d1, s, r, g, b, r1, g1, b1, vx, vy, vx1, vy1;
  
  void move(){
    x += vx;
    y += vy;
    if(x<0 || x>width) vx = -vx;
    if(y<0 || y>height) vy = -vy;
  }
  
  void kirby() {
    fill(240,34,83);
    arc(x-15*d1,y+17.5*d1,20*d1,5*d1,0,2*PI); //left leg
    arc(x+15*d1,y+17.5*d1,20*d1,5*d1,0,2*PI); //right leg
    fill(r,g,b);
    arc(x-18*d1,y-7.5*d1,12*d1,15*d1,0,2*PI); //left arm
    arc(x+18*d1,y-7.5*d1,12*d1,15*d1,0,2*PI); //right arm
    circle(x,y,40*d1); //body
    fill(7,20,170);
    arc(x-5*d1,y-9*d1,5*d1,11*d1,0,2*PI); //left eye
    arc(x+5*d1,y-9*d1,5*d1,11*d1,0,2*PI); //right eye
    fill(200,30,60);
    triangle(x-3*d1,y-2*d1,x+3*d1,y-2*d1,x,y+3*d1); //mouth
  }
  
  void awesome_face() {
    stroke(0);
    fill(r, g, b);
    circle(x,y,100*d); // face
  
    fill(255);
    arc(x-27.5*d,y-5*d,25*d,40*d,PI,2*PI);
    line(x-40*d,y-5*d,x-15*d,y-5*d); // left eye
  
    arc(x+17.5*d,y-5*d,25*d,40*d,PI,2*PI);
    line(x+5*d,y-5*d,x+30*d,y-5*d); // right eye
  
    fill(0);
    circle(x-22*d,y-17*d,9*d); // left pupil
  
    circle(x+23*d,y-17*d,9*d); // right pupil
  
    fill(136,18,67);
    arc(x-2.5*d,y+5*d,65*d,65*d,0,PI);
    line(x-40*d,y+5*d,x+30*d,y+5*d); // mouth
  
    fill(249,191,222);
    strokeWeight(0);
    pushMatrix();
    translate(x+5*d,y+30*d);
    rotate(-PI/12);
    ellipse(0,0,27*d,15*d);
    popMatrix(); // tongue
  
    strokeWeight(1);
    noFill();
    arc(x-2.5*d,y+5*d,65*d,65*d,0,PI); // mouth outline
  }
  
  void jetFighter(){
    fill(r,g,b);  //dark navy
    beginShape();
    vertex(x, y-s*59);  //nose
    vertex(x-s*6, y-s*23);
    vertex(x-s*15, y-s*12);
    vertex(x-s*18, y+s);
    vertex(x-s*44, y+s*28);
    vertex(x-s*44, y+s*34);  //left wingtip
    vertex(x-s*40, y+s*37);
    vertex(x-s*23, y+s*41);
    vertex(x-s*31, y+s*50);
    vertex(x-s*30, y+s*54);
    vertex(x-s*16, y+s*58);
    vertex(x-s*13, y+s*46);
    vertex(x-s*9, y+s*55);
    vertex(x-s*5, y+s*47);
    vertex(x, y+s*58);  //thruster
    vertex(x+s*5, y+s*47);
    vertex(x+s*9, y+s*55);
    vertex(x+s*13, y+s*46);
    vertex(x+s*16, y+s*58);
    vertex(x+s*30, y+s*54);
    vertex(x+s*31, y+s*50);
    vertex(x+s*23, y+s*41);
    vertex(x+s*40, y+s*37);
    vertex(x+s*44, y+s*34);  //right wingtip
    vertex(x+s*44, y+s*28);
    vertex(x+s*18, y+s);
    vertex(x+s*15, y-s*12);
    vertex(x+s*6, y-s*23);
    vertex(x, y-s*59);  //nose
    endShape();
  }
  
  void collide(Siha c){ // 튕기기 구현
    float dx = x-c.x;
    float dy = y-c.y;
    float dd = sqrt(dx*dx + dy*dy);
    if(dd < (100*d+100*c.d)/4){
      dx = vx;       dy = vy;
      vx = c.vx;     vy = c.vy;
      c.vx = dx;    c.vy = dy;
      
      r1 = c.r; g1 = c.g; b1 = c.b;
      c.r = r; c.g = g; c.b = b;
      r = r1; g = g1; b = b1;
    }
  }
}
