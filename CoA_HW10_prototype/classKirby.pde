class kirby{
  // constructor
  kirby(){
    x1 = 50; y1 = height-50; d1 = 2.5; //초기위치 왼쪽 아래
    degreeX = 0.1; degreeY = 0.1; gravity = 0.2;
  }
  // member data
  float x1, y1, d1, vx1, vy1, degreeX, degreeY, gravity;
  // member function
  void update(){ //커비위치업뎃(draw)
    x1 += vx1;
    y1 += vy1;
    if (vx1 > 0) vx1 = vx1 - degreeX;
    if (vx1 < 0) vx1 = vx1 + degreeX;
    if (vy1 > 0) vy1 = vy1 - degreeY;
    if (vy1 < 0) vy1 = vy1 + degreeY;
    vy1 = vy1 + gravity;
    if (x1 < 0 || x1 > width) vx1 = -vx1;
    if (y1 < 0 || y1 > height) vy1 = -vy1;
  }
  void move(char k){  // 이동방식(키보드)
    if (k == 'w') vy1 -= 6;
    else if (k == 'a') vx1 -= 6;
    else if (k == 's') vy1 += 6;
    else if (k == 'd') vx1 += 6;
  }
  void show(){ // 커비캐릭터(draw)
    fill(240,34,83);
    arc(x1-15*d1,y1+17.5*d1,20*d1,5*d1,0,2*PI); //left leg
    arc(x1+15*d1,y1+17.5*d1,20*d1,5*d1,0,2*PI); //right leg
    fill(255,160,200);
    arc(x1-18*d1,y1-7.5*d1,12*d1,15*d1,0,2*PI); //left arm
    arc(x1+18*d1,y1-7.5*d1,12*d1,15*d1,0,2*PI); //right arm
    circle(x1,y1,40*d1); //body
    fill(7,20,170);
    arc(x1-5*d1,y1-9*d1,5*d1,11*d1,0,2*PI); //left eye
    arc(x1+5*d1,y1-9*d1,5*d1,11*d1,0,2*PI); //right eye
    fill(200,30,60);
    triangle(x1-3*d1,y1-2*d1,x1+3*d1,y1-2*d1,x1,y1+3*d1); //mouth
  }
  
  void collide(Siha c){ // 튕기기 구현
    float dx = x1-c.x;
    float dy = y1-c.y;
    float dd = sqrt(dx*dx + dy*dy);
    if(dd < (100*d1+100*c.d)/4){
      dx = vx1;       dy = vy1;
      vx1 = c.vx;     vy1 = c.vy;
      c.vx = dx;    c.vy = dy;      
    }
  }
  
  void end(){
    float X, Y, D;
    X = x1-aw.x;
    Y = y1-aw.y;
    D = sqrt(X*X + Y*Y);
    if(D < 50) t=false;
  }
}
