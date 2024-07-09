void setup(){
  size(400, 600);
  ballX = width;
  ballY = height/2;
  r_oscillation = height/2 - 50;
}

float ballX, ballY;
float r_oscillation;
float angle;
void draw(){
  drawBackground();
  ballX -= 2;
  if(ballX + 25 < 0){
    ballX = width + 25;
  }
  angle += 0.1;
  r_oscillation -= 0.5;
   if(r_oscillation < 0) r_oscillation = height/2 - 50; 
    ballY =(height/2-25) - abs(cos(angle)) * r_oscillation;
  drawBall(ballX, ballY);
}
void drawBackground(){
  fill(0, 0, 255);
  rect(0, 0, 400, 300);
  fill(255, 255, 0);
  rect(0, 300, 400, 300);
}

void drawBall(float cx, float cy){
  fill(150, 75, 0);
  ellipse(cx, cy, 50, 50);
  line(cx, cy - 25, cx, cy + 25);
  arc(cx - 25, cy, 30, 30, radians(360 - 60), radians(360 + 60));
  arc(cx + 25, cy, 30, 30, radians(180 - 60), radians(180 + 60));
  if(cx + 25 < 0) cx = width;
}
