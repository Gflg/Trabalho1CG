public class Pentagono extends FiguraGeometrica {

  public Pentagono(Vertice v1, Vertice v2, Vertice v3, Vertice v4, Vertice v5) {
    super(2, 5);
    this.vertices[0][0] = v1.getX();
    this.vertices[1][0] = v1.getY();
    this.vertices[0][1] = v2.getX();
    this.vertices[1][1] = v2.getY();
    this.vertices[0][2] = v3.getX();
    this.vertices[1][2] = v3.getY();
    this.vertices[0][3] = v4.getX();
    this.vertices[1][3] = v4.getY();
    this.vertices[0][4] = v5.getX();
    this.vertices[1][4] = v5.getY();
  }

  public void drawPentagono() {
    line(vertices[0][0], vertices[1][0], vertices[0][1], vertices[1][1]);
    line(vertices[0][0], vertices[1][0], vertices[0][2], vertices[1][2]);
    line(vertices[0][2], vertices[1][2], vertices[0][3], vertices[1][3]);
    line(vertices[0][1], vertices[1][1], vertices[0][4], vertices[1][4]);
    line(vertices[0][3], vertices[1][3], vertices[0][4], vertices[1][4]);
  }

}
