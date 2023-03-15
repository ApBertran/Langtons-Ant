public class Board {
  private Tile[][] tileArray = new Tile[100][100];
  private Ant ant;
  
  public Board() {
    ant = new Ant(400, 400);
    for (int r = 0; r < tileArray.length; r++) {
      for (int c = 0; c < tileArray[r].length; c++) {
        tileArray[r][c] = new Tile(r*8, c*8);
      }
    }
  }
  
  public void update() {
    for (Tile[] r : tileArray) {
      for (Tile t : r) {
        if (t.getLocation()[0] == ant.getLocation()[0] && t.getLocation()[1] == ant.getLocation()[1]) {
          if (t.getStatus()) {
            ant.turn(-1);
            t.toggleStatus();
            ant.move();
          } else {
            ant.turn(1);
            t.toggleStatus();
            ant.move();
          }
        }
      }
    }
  }
  
  public void render() {
    for (Tile[] r : tileArray) {
      for (Tile t : r) {
        t.render();
      }
    }
    ant.render();
  }
}
