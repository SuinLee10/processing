float rate = 0.0;
void setup(){
  size(600, 300);
  heartX = width*2/3;
  heartY = height*2/3;
  headX = heartX-25;
  headY = heartY-100;
  noStroke();
}
float headX, headY, heartX, heartY;
float scalefactor=1;
int count = 0;

void draw(){
  background(255, 255, 182);
  drawPeople(headX, headY);
  drawHeart(heartX, heartY);
}
void drawPeople(float cx, float cy){
  fill(0, 73, 140);
  ellipse(cx, cy, 50, 50);
  rect(cx - 75, cy + 25, 150, 175, 15, 15, 0, 0);
}
void drawHeart(float cx, float cy){
  pushMatrix();
  translate(cx, cy);
  if(count < 30){
     scalefactor += 0.02;
     count++;
  }else{
    scalefactor -= 0.02;
    count++;
    if(count == 59)count = 0;
  }
  scale(scalefactor);
  fill(255, 0, 0);
  arc(0 - 15, 0, 30, 30, PI, TWO_PI);
  arc(0 + 15, 0, 30, 30, PI, TWO_PI);
  triangle(0 - 30, 0, 0 + 30, 0, 0, 0+30);
  popMatrix();
}
