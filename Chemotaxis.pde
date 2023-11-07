// declare globally so that it's
// accessible throughout draw() and setup()
Amogus[] amogus;

void setup() {
  size(300, 300);
  frameRate(15);

  // instantiate in setup so that it's only ran once
  // before, this was done in draw() so it would constantly be re-instantiated
  amogus = new Amogus[10];
  for (int i = 0; i < amogus.length; i++) {
    amogus[i] = new Amogus(15);
  }
}

void draw() {
  background(123, 4, 163); 

  // include only this part of the for loop in draw()
  for (int i = 0; i < amogus.length; i++) {
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
    // check for the position of the mouse vs. the circle
    // move accordingly so that the sphere always moves
    // with bias towards the mouse
    if (x < mouseX) {
      x += (int)(Math.random() * 50 - 10);
    } if (x > mouseX) {
      x += (int)(Math.random() * 50 - 35);
    }
    
    if (y < mouseY) {
      y += (int)(Math.random() * 50 - 10);
    } if (y > mouseY) {
      y += (int)(Math.random() * 50 - 35);
    }
  }
  
  void show() {
    fill(c);
    ellipse(x, y, r, r);
  }
}
