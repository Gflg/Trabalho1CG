public class Giro extends FiguraGeometrica {

  public Giro(Vertice[] verticesGiro){
    super(2, verticesGiro.length);
    this.vertices[0] = new Vertice(verticesGiro[0]);
    this.vertices[1] = new Vertice(verticesGiro[1]);
    this.vertices[2] = new Vertice(verticesGiro[2]);
    this.vertices[3] = new Vertice(verticesGiro[3]);
    this.vertices[4] = new Vertice(verticesGiro[4]);
    this.vertices[5] = new Vertice(verticesGiro[5]);
    this.vertices[6] = new Vertice(verticesGiro[6]);
    this.vertices[7] = new Vertice(verticesGiro[7]);
    this.vertices[8] = new Vertice(verticesGiro[8]);
  }

  public void drawGiro() {
    transformacaoCoordenadas(this.vertices);
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[4].getX(), vertices[4].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[6].getX(), vertices[6].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[7].getX(), vertices[7].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[8].getX(), vertices[8].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[3].getX(), vertices[3].getY(), vertices[4].getX(), vertices[4].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[5].getX(), vertices[5].getY(), vertices[6].getX(), vertices[6].getY());
    line(vertices[6].getX(), vertices[6].getY(), vertices[7].getX(), vertices[7].getY());
    line(vertices[7].getX(), vertices[7].getY(), vertices[8].getX(), vertices[8].getY());
    line(vertices[8].getX(), vertices[8].getY(), vertices[1].getX(), vertices[1].getY());
  }

}
