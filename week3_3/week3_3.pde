size(1200, 800);
background(99, 56, 5);
int rectX= 200;
int rectY = 600;

int flag = 50;
int flag2 = 50;
strokeWeight(0);
//도로 
fill(52, 52, 52);
rect(0, rectY+20, 1200, 100);
//도로 중앙선 
fill(255, 151, 30);
for(int i = 0 ; i < 6; i++){
  rect(flag, rectY + 65, 100, 10);
  flag = flag + 200;
}
//가로수 
fill(20, 173, 3);
for(int k = 0; k < 2; k++){
  if(k == 1) flag2 = 50;
  for(int j = 0 ; j < 12; j++){
    if(k==0){
    triangle(flag2, rectY + 20, flag2 + 30, rectY + 20, flag2 + 15, rectY - 10);
    } else { 
     triangle(flag2, rectY + 120, flag2 + 30, rectY + 120, flag2 + 15, rectY + 90);
   }
    flag2 = flag2 + 100;
  } 
}


//자동차몸통 
fill(255, 0, 0);
rect(rectX, rectY, 100, 40);
rect(rectX + 40, rectY-20, 60, 20);
//자동차바퀴 
fill(0, 0, 0);
ellipse(rectX + 25,rectY + 40, 30, 30);
ellipse(rectX + 75, rectY + 40, 30, 30);
