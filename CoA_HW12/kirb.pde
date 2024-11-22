class kirby {
  kirby(){  };
  kirby(float p, float q, float r) {
    x1 = p;      y1 = q;     d1 = r;
    st = new star();
  }
  //member data
  float x1, y1, d1;
  star st;
  float rand = random(0.0,2.0);
  //member func.
  void Kirby(float R1, float G1, float B1, float R2, float G2, float B2) {
     fill(R2,G2,B2); // leg color
     arc(x1-15*d1,y1+17.5*d1,20*d1,5*d1,0,2*PI); //left leg
     arc(x1+15*d1,y1+17.5*d1,20*d1,5*d1,0,2*PI); //right leg
     fill(R1,G1,B1); // body color
     arc(x1-18*d1,y1-7.5*d1,12*d1,15*d1,0,2*PI); //left arm
     arc(x1+18*d1,y1-7.5*d1,12*d1,15*d1,0,2*PI); //right arm
     circle(x1,y1,40*d1); //body
     fill(7,20,170);
     arc(x1-5*d1,y1-9*d1,5*d1,11*d1,0,2*PI); //left eye
     arc(x1+5*d1,y1-9*d1,5*d1,11*d1,0,2*PI); //right eye
     if(rand>=1.0){
       translate(x1,y1);
       st.drawStar();
       translate(-x1,-y1);
     }
  }
  void show(){};  // virtual function       
}
