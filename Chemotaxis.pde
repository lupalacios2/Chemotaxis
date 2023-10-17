void setup() {
  size(300, 300);
  frameRate(15);
}

void draw() {
  background(123, 4, 163); 
  
  Amogus amogus [] = new Amogus[10];
  
  for (int i = 0; i < amogus.length; i++) {
    amogus[i] = new Amogus(15);
    amogus[i].move();
    amogus[i].show();
  }
}

class Amogus {
  int x, y, c, r;
  int degree = 300;
  
  Amogus(int radius) {
    x = 150;
    y = 150;
    c = color(255);
    r = radius;
  }
  
  void move() {
    x = mouseX + (int)(Math.random() * 50 - 25);
    y = mouseY + (int)(Math.random() * 50 - 25);
  }
  
  void show() {
    fill(c);
    ellipse(x, y, r, r);
  }
}
