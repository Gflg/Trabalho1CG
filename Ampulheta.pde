public class Ampulheta extends FiguraGeometrica {

  public Ampulheta(Vertice[] verticesAmpulheta){
    super(2, verticesAmpulheta.length);
    this.vertices[0] = new Vertice(verticesAmpulheta[0]);
    this.vertices[1] = new Vertice(verticesAmpulheta[1]);
    this.vertices[2] = new Vertice(verticesAmpulheta[2]);
    this.vertices[3] = new Vertice(verticesAmpulheta[3]);
    this.vertices[4] = new Vertice(verticesAmpulheta[4]);
  }

  public void drawAmpulheta() {
    transformacaoCoordenadas(this.vertices);
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[4].getX(), vertices[4].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[3].getX(), vertices[3].getY(), vertices[4].getX(), vertices[4].getY());
  }

}
