//커비 클래스를 상속받은 어둠커비
class dark extends kirby{
  dark(float p, float q, float r){
    super(p,q,r);
  }
  void show(){
    float R1 = 100; float G1 = 100; float B1 = 100; // body color
    float R2 = 45;  float G2 = 45;  float B2 = 45;  // leg color
    Kirby(R1,G1,B1,R2,G2,B2);
    fill(R1,G1,B1);
    noStroke();
    arc(x1,y1-9*d1,20*d1,20*d1,7*PI/6,11*PI/6); // change eye shape
    stroke(1);
    fill(200,30,60);
    circle(x1,y1+d1,7*d1); // mouth
  }
}
