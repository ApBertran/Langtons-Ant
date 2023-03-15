Board b;

void setup() {
  size(800,800);
  b = new Board();
}

void draw() {
  b.update();
  b.render();
  
  // enable for testing
  // noLoop();
  
}
