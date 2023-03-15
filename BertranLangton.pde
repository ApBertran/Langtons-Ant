Board b;

void setup() {
  size(800,800);
  b = new Board();
  frameRate(10);
}

void draw() {
  b.update();
  b.render();
}

void mousePressed() {
  b.tileClicked(mouseX / 8, mouseY / 8);
}

void keyPressed() {
  b.startGame();
}
