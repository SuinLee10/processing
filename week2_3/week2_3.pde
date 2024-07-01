size(300, 300);
int px, py;
px = 150;
py = 150;
int direction = 1;
int degreeRef = 180;

ellipse(px, py, 60, 60);

if(px <= 150){
  direction = 1;
  degreeRef = 180;
}else{
  direction = -1;
  degreeRef = 360;
}
  triangle(px, py-10, px - direction * 10, py-5, px- direction * 10, py-15);
  triangle(px-direction * 30, py, px-direction * 50, py-10, px-direction * 50, py+10);
  fill(0, 0, 0);
  ellipse(px+ direction * 20, py - 10 ,5, 5);
  noFill();
  arc(px + direction * 30, py, 60, 60, radians(degreeRef-60), radians(degreeRef+60));
