public class Quadrilatero extends FiguraGeometrica {

  public Quadrilatero(Vertice[] verticesQuadrilatero){
    super(2, verticesQuadrilatero.length);
    this.vertices[0] = new Vertice(verticesQuadrilatero[0]);
    this.vertices[1] = new Vertice(verticesQuadrilatero[1]);
    this.vertices[2] = new Vertice(verticesQuadrilatero[2]);
    this.vertices[3] = new Vertice(verticesQuadrilatero[3]);
  }

  public void drawQuadrilatero() {
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[3].getX(), vertices[3].getY());
  }

}
