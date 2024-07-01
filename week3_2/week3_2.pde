size(1200, 800);
background(99, 56, 5);
int rectX= 200;
int rectY = 600;
int flag = 50;
strokeWeight(0);
//도로
fill(52, 52, 52);
rect(0, rectY+20, 1200, 100);
fill(255, 151, 30);
//도로 중앙선
for(int i = 0 ; i < 6; i++){
  rect(flag, rectY + 70, 100, 10);
  flag = flag + 200;
}
//자동차몸통
fill(255, 0, 0);
rect(rectX, rectY, 100, 40);
rect(rectX + 40, rectY-20, 60, 20);
//자동차바퀴
fill(0, 0, 0);
ellipse(rectX + 25,rectY + 40, 30, 30);
ellipse(rectX + 75, rectY + 40, 30, 30);
