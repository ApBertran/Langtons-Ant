public class Tile {
  private int status;
  private int[] location = new int[2];

  public Tile(int x, int y) {
    status = 0;
    location[0] = x;
    location[1] = y;
  }

  public int[] getLocation() {
    return location;
  }

  public int getStatus() {
    return status;
  }

  public void toggleStatus() {
    if (status == 0) {
      status = 1;
    } else if (status == 1) {
      status = 2;
    } else if (status == 2) {
      status = 3;
    } else if (status == 3) {
      status = 0;
    }
  }

  public void render() {
    if (status == 0) {
      stroke(0);
      fill(0);
    } else if (status == 1) {
      stroke(255,0,255);
      fill(255,0,255);
    } else if (status == 2) {
      stroke(150,0,255);
      fill(150,0,255);
    } else if (status == 3) {
      stroke(0,0,255);
      fill(0,0,255);
    }
    rect(location[0], location[1], 8, 8);
  }
}
