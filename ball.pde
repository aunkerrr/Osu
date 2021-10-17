public class ball{ //создание класа  

int size;
int x;
int y;
int r;
int g;
int b;
boolean clear = false;
color ballcolor;
void clearball(){
clear = false;
size = (int)random(30, 120); //розміри
x = (int)random(0, 650); //розміщення по іксу
y = (int)random(0, 650); //розміщення по ігрику
r = (int)random(0, 240); //цвета по ргб
g = (int)random(0, 240); //цвета по ргб
b = (int)random(0, 240); //цвета по ргб
ballcolor = color(r, g, b); //даем шарику понятие цвета
}
void collision(){
 if(mouseX <= x - size/2 && mouseX >= x + size/2 && 
      mouseY <= y - size/2 && mouseY >= y + size/2)
        this.clear = true;
}
void transfer(ball next){
this.ballcolor = next.ballcolor;
this.x = next.x;
this.y = next.y;
}
void display(){
  noStroke();
  fill(ballcolor); //кольори по ргб
  ellipse(x, y , size , size ); //рисуем спидранерские шарики
  
}
}
