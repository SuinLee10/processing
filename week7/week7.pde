void setup(){ 
  size(600, 400); 
  background(100, 10, 10); 
  smooth();
  randomSeed(1L); 
}
float x1 = random(width);
float y1 = random(height); 
void draw(){
  //끝점은 항상 새롭게 
  float x2 = random(width); 
  float y2 = random(height);  
  if(x1 < 10 || y1 < 10){
    background(100, 10, 10); 
    stroke(random(255), random(255), random(255));
  }
    strokeWeight(4); 
    line(x1, y1, x2, y2); 
    x1=x2; 
    y1=y2;
}
