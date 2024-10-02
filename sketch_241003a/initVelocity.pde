void initVelocity(){
  // time module을 활용하여 초기 속도를 생성
  int randomA = second(), randomB = minute(), randomC = hour();

  blueKirbyVX = (randomC * randomA) % 4 + 3;
  blueKirbyVY = (randomA * randomB) % 3 + 4;
  pinkyKirbyVX = (randomC + randomA + randomB) % 5 + 2;
  pinkyKirbyVY = (randomC * 3 + randomA * 2 + randomB) % 4 + 1;
  gearVX = (randomC * 4 + randomA * 3 + randomB * 2) % 4 + 1;
  gearVY = (randomC * 5 + randomA * 4 + randomB * 3) % 5 + 1;
}
