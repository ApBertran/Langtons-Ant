public class Ant extends Tile { 
  private int orientation;
  private PImage ant_up;
  private PImage ant_down;
  private PImage ant_left;
  private PImage ant_right;
  // 0 = up
  // 1 = right
  // 2 = down
  // 3 = left
  
  public Ant(int x, int y) {
    super(x, y);
    orientation = 0;
    ant_up = loadImage("ant-up.png");
    ant_down = loadImage("ant-down.png");
    ant_left = loadImage("ant-left.png");
    ant_right = loadImage("ant-right.png");
    
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
    if (orientation == 0) {
      image(ant_up, super.location[0], super.location[1]);
    } else if (orientation == 1) {
      image(ant_right, super.location[0], super.location[1]);
    } else if (orientation == 2) {
      image(ant_down, super.location[0], super.location[1]);
    } else if (orientation == 3) {
      image(ant_left, super.location[0], super.location[1]);
    }
  }
}
