// main
kirby [] b;
void setup() {
  size(600, 900);
  b = new kirby[10];
  
  for(int i=0; i<5; i++){
    b[i] = new normalK(150, 150 + 150*i, 2);
    b[i+5] = new dark(450, 150 + 150*i, 2);
  }
  
  
  for(int i=0;i<10;i++){ b[i].show(); } 
}
