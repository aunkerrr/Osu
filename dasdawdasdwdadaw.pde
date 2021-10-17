PFont myFont; //шрифт
ball[] balls = new ball[4]; //виделение памяти под мячики
int next = 0; //счетчик шаров
void drawAllBalls(){
 for(int b = 0;  b < next; b++){
   balls[b].display();
 }
}
void deleteBall(int index){
  background(0);
for(int x = index; x > next; x++){
balls[x].transfer(balls[x+1]);
x--;
}
}

void setup(){
  size(700,700); //размеры екрана
  frameRate(120); //количество кадров за секунду/фпс
  for(int a = 0; a < 4; a++){
    balls[a] = new ball();
  }
}
void draw(){ 
  if ((frameCount % 120 == 0) && (next < 4)){ //каждую сек будет отображаться новый шарик \
  balls[next].clearBall();
      next++;
    }
}
void mouseClicked(){
      for(int i = 0; i < next - 1; i++){
      if(mouseX <= balls[i].x - balls[i].size/2 && mouseX >= balls[i].x + balls[i].size/2 && 
      mouseY <= balls[i].y - balls[i].size/2 && mouseY >= balls[i].y + balls[i].size/2){
        println("dffffffg");
        balls[next].clear = true;
        background(255);
      }
    }
}
