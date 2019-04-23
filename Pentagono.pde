public class Pentagono extends FiguraGeometrica {

  public Pentagono(Vertice[] vertices, Vertice v2, Vertice v3, Vertice v4, Vertice v5) {
    super(2, 5);
    this.vertices[0] = new Vertice(vertices[0]);
    this.vertices[1] = new Vertice(vertices[1]);
    this.vertices[2] = new Vertice(vertices[2]);
    this.vertices[3] = new Vertice(vertices[3]);
    this.vertices[4] = new Vertice(vertices[4]);
  }

  public void drawPentagono() {
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[4].getX(), vertices[4].getY());
    line(vertices[3].getX(), vertices[3].getY(), vertices[4].getX(), vertices[4].getY());
  }

}
