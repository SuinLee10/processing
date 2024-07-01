size(1200, 800);
background(99, 56, 5);

int carX= width/2;
int carY = 560;
//그라데이션 
noStroke();
for(int i = 0; i < 56; i++){
  //(190, 247, 255), (220, 110, 1)
  float sy = 10 * i;
  float r = 190 + (220 - 190)/float(56) * i;
  float g = 247 + (110 - 247)/float(56) * i;
  float b = 255 + (1 - 255)/float(56) * i;
  fill(r, g, b);
  rect(0, sy, width, 10);
}

strokeWeight(0);

//도로 
fill(52, 52, 52);
rect(0, carY, width, 100);
// 윗줄 가로수 
fill(20, 173, 3);
for(int k = 0; k < 12; k++){
   int tx = 50 + 100 * k;
   int ty = carY;
   triangle(tx, ty, tx + 15, ty-30, tx+30, ty);
}
//자동차 몸통 
fill(20, 140, 200);
rectMode(CENTER);
rect(carX, carY, 100, 40);
rectMode(CENTER);
rect(carX + 20, carY-30, 60, 20);
//자동차 바퀴 
fill(0, 0, 0);
ellipse(carX - 25,carY + 20, 30, 30);
ellipse(carX + 25, carY + 20, 30, 30);

//아랫줄 가로수 
fill(20, 173, 3);
for(int k = 0; k < 12; k++){
   int tx = 50 + 100 * k;
   int ty = carY + 100;
   triangle(tx, ty, tx + 15, ty-30, tx+30, ty);
   
}
//도로 중앙선 
rectMode(CORNER);
fill(255, 151, 30);
int tx = 50;
for(int i = 0 ; i < 6; i++){
  rect(tx, carY + 45, 100, 10);
  tx = tx + 200;
} 
