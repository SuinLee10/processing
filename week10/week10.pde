int n_pw =10;
float[] pwx = new float[n_pw]; //우l치 x
float [] pwy = new float[n_pw]; //위치 y
float [] pws = new float[n_pw]; // 크기 
float [] pwsp = new float[n_pw]; // 속도
float [] pwa = new float[n_pw]; //날개 위치
boolean[] pwvisible = new boolean[n_pw];

void setup(){
  size(800,800);
  smooth();
  noStroke();
  for(int i = 0; i < n_pw; i++){
    pwx[i] = random(0, width);
    pwy[i] = random(0, height);
    pws[i] = random(1, 3);
    pwsp[i] = random(0.1, 0.5);
    pwa[i] = 0;
    pwvisible[i] = false;
  }
  
}
float angle = 0.0;
void draw(){
   background(220);
   for(int i = 0; i < n_pw; i++){
     if(pwvisible[i]){
       pwa[i]=drawPinWheel(pwx[i], pwy[i], pws[i], pwsp[i], pwa[i]);
     }
   }
}

int visible_count = 0;
//클릭한 것을 별도의 마우스 이벤트로 확인-한번 뭔가 실행하고 끝
void mousePressed(){
  if(visible_count < n_pw){
    pwvisible[visible_count] = true;
    pwx[visible_count]= mouseX;
    pwy[visible_count] = mouseY;
    visible_count++;
  }
}

float drawPinWheel(float cx, float cy, float cs, float csp, float ca){
  pushMatrix();
  translate(cx, cy);
  scale(cs);
  fill(255);
  rect(0-4, 0+16, 8,100);
  pushMatrix();
  translate(0,0);
  ca+=csp;
  rotate(ca);
  fill(200, 0, 0);
  quad(0,0,0,-60,30,-20,30,0);
  fill(250, 250, 0);
  quad(0,0,60,0,20,30,0, 30);
  fill(0, 200, 0);
  quad(0,0,0,60,-30,20,-30,0);
  fill(200, 0, 0);
  quad(0,0,-60,0,-20,-30,0, -30);
  popMatrix();
  fill(255);
  ellipse(0, 0, 10, 10);
  popMatrix();
  
  return ca;
}
