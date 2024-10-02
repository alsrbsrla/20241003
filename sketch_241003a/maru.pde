void maru(float x, float y, float z){
  //모자(원)
  fill(#FFBB00);
  circle(x, y, z);
  
  //모자(반원)
  fill(#FFBB00);
  arc(x, y-z*0.375, z*0.65, z*0.475, PI, 2*PI);
  
  //모자(타원)
  fill(#47C83E);
  ellipse(x, y-z*0.675, z*0.1, z*0.25);
  
  //얼굴(quad)
  fill(255);
  quad(x-z*0.3,y+z*0.1, x+z*0.3,y+z*0.1, x+z*0.2,y+z*0.5, x-z*0.2,y+z*0.5);
  
  //얼굴(arc)
  fill(255);
  arc(x, y+z*0.5, z*0.4, z*0.3, 0, PI);
  
  //왼쪽 얼굴 무늬(arc)
  fill(0);
  arc(x-z*0.3, y+z*0.1, z*0.6, z*0.6, 0, 0.42*PI);
  
  //오른쪽 얼굴 무늬(arc)
  fill(0);
  arc(x+z*0.3, y+z*0.1, z*0.45, z*0.45, 0.58*PI ,PI);
  
  //왼쪽 눈동자(circle)
  fill(255);
  circle(x-z*0.15, y+z*0.2, z*0.09);
  fill(0);
  circle(x-z*0.15, y+z*0.2, z*0.065);
  
  //오른쪽 눈동자(circle)
  fill(255);
  circle(x+z*0.15, y+z*0.2, z*0.09);
  fill(0);
  circle(x+z*0.15, y+z*0.2, z*0.065);
  
  //코(ellipse)
  fill(0);
  ellipse(x, y+z*0.5, z*0.125, z*0.075);
  
  //혀
  fill(#CC3D3D);
  arc(x, y+z*0.6, z*0.125, z*0.25, 0, PI);
}
