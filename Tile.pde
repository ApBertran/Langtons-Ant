public class Tile {
  private boolean status;
  private int[] location = new int[2];
  
  public Tile(int x, int y) {
    status = false;
    location[0] = x;
    location[1] = y;
  }
  
  public int[] getLocation() {
    return location;
  }
  
  public boolean getStatus() {
    return status;
  }
  
  public void toggleStatus() {
    if (status) { status = false; }
    else { status = true; }
  }
  
  public void render() {
    if (status) { stroke(255); fill(255); }
    else { stroke(0); fill(0); }
    rect(location[0], location[1], 8, 8);
  }
}
