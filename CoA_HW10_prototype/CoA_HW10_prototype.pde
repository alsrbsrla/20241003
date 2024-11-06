Siha [] aa; 
awesome_face aw; kirby kb;
int n; 
boolean t;
void setup() {
  size(1200, 600);
  n = 7; //n으로 jet의 개수 조절
  aa = new Siha[n];
  aw = new awesome_face(3);
  kb = new kirby();
  t = true;
  for (int i=0; i<n; i++) {
    aa[i] = new Siha();
  }
}

void draw(){
  if(t==true){
    background(192,192,192);
    textSize(50);
    text("Touch smile! (command with w,a,s,d)", 50, 50);
    for (int i=0; i<n; i++){
      kb.collide(aa[i]);
      aw.collide(aa[i]);
      if(i != n-1){
        for(int j=i+1;j<n;j++){
          aa[i].collide(aa[j]);
        }
      }
      aa[i].move();
      aa[i].jetFighter();
    }
    kb.update();
    kb.show();
    aw.show();
    aw.colour();
    kb.end(); // face와 충돌했는지 검사
  }
  else {
    background(255);
    textSize(120);
    text("clear!", width/2 -120, height/2 +50);
  }
}

void keyPressed(){
  kb.move(key);
}
