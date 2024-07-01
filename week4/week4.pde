void setup(){
  size(1200, 800);
  background(99, 56, 5);
}

void draw(){
  int carX= width/2;
  int carY = 560;
  gradation(56);
  
  drawWay(carY);
  drawTree(carY);
  drawCar(carX, carY);
  drawTree(carY + 100);
  drawMidLine(carY);
  
}
//도로 
void drawWay(int y){
  strokeWeight(0);
  fill(52, 52, 52);
  rect(0, y, width, 100);
}
//자동차 
void drawCar(int x, int y){
  //자동차 몸통 
  fill(20, 140, 200);
  rectMode(CENTER);
  rect(x, y, 100, 40);
  rectMode(CENTER);
  rect(x + 20, y-30, 60, 20);
  //자동차 바퀴 
  fill(0, 0, 0);
  ellipse(x - 25,y + 20, 30, 30);
  ellipse(x + 25, y + 20, 30, 30);
}
//그라데이션 
void gradation(int finish){
  noStroke();
  for(int i = 0; i < finish; i++){
    //(190, 247, 255), (220, 110, 1)
    float sy = 10 * i;
    float r = 190 + (220 - 190)/float(finish) * i;
    float g = 247 + (110 - 247)/float(finish) * i;
    float b = 255 + (1 - 255)/float(finish) * i;
    fill(r, g, b);
    rect(0, sy, width, 10);
  }
}
//가로수 
void drawTree(int y){
  fill(20, 173, 3);
  for(int k = 0; k < 12; k++){
     int tx = 50 + 100 * k;
     triangle(tx, y, tx + 15, y-30, tx+30, y);
  }
}
void drawMidLine(int y){
  //도로 중앙선 
  rectMode(CORNER);
  fill(255, 151, 30);
  int tx = 50;
  for(int i = 0 ; i < 6; i++){
    rect(tx, y + 45, 100, 10);
    tx = tx + 200;
  } 
}
