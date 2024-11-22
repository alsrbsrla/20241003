//커비 클래스를 상속받은 일반 커비
class normalK extends kirby{
  normalK(float p, float q, float r){
    super(p,q,r);
  }
  void show(){   
    float R1=255; float G1=160; float B1=200; // body color
    float R2=240; float G2=34;  float B2=83;  // leg color
    Kirby(R1,G1,B1,R2,G2,B2);
    fill(200,30,60);
    triangle(x1-3*d1,y1-2*d1,x1+3*d1,y1-2*d1,x1,y1+3*d1); //mouth
  }
}
