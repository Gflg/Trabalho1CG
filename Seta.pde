public class Seta extends FiguraGeometrica {

  public Seta(Vertice[] verticesSeta){
    super(2, verticesSeta.length);
    this.vertices[0] = new Vertice(verticesSeta[0]);
    this.vertices[1] = new Vertice(verticesSeta[1]);
    this.vertices[2] = new Vertice(verticesSeta[2]);
    this.vertices[3] = new Vertice(verticesSeta[3]);
    this.vertices[4] = new Vertice(verticesSeta[4]);
    this.vertices[5] = new Vertice(verticesSeta[5]);
    this.vertices[6] = new Vertice(verticesSeta[6]);
  }

  public void drawSeta() {
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[4].getX(), vertices[3].getY());
    line(vertices[3].getX(), vertices[3].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[6].getX(), vertices[6].getY());
    line(vertices[5].getX(), vertices[5].getY(), vertices[6].getX(), vertices[6].getY());
  }

}
