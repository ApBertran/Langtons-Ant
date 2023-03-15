public class Ant extends Tile { 
  private int orientation;
  // 0 = up
  // 1 = right
  // 2 = down
  // 3 = left
  
  public Ant(int x, int y) {
    super(x, y);
    orientation = 0;
  }
  
  public void turn(int amount) {
    orientation += amount;
    if (orientation > 3) { orientation = 0; }
    else if (orientation < 0) { orientation = 3; }
  }
  
  public void move() {
    if (orientation == 0) {
      super.location[1] += 8;
    } else if (orientation == 1) {
      super.location[0] += 8;
    } else if (orientation == 2) {
      super.location[1] -= 8;
    } else if (orientation == 3) {
      super.location[0] -= 8;
    }
  }
  
  public void render() {
    stroke(255,0,0); fill(255,0,0);
    rect(super.location[0], super.location[1], 8, 8);
  }
}
