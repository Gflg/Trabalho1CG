public class Pentagono extends FiguraGeometrica {

  public Pentagono(Vertice[] verticesPentagono){
    super(2, verticesPentagono.length);
    this.vertices[0] = new Vertice(verticesPentagono[0]);
    this.vertices[1] = new Vertice(verticesPentagono[1]);
    this.vertices[2] = new Vertice(verticesPentagono[2]);
    this.vertices[3] = new Vertice(verticesPentagono[3]);
    this.vertices[4] = new Vertice(verticesPentagono[4]);
  }

  public void drawPentagono() {
    transformacaoCoordenadas(this.vertices);
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[4].getX(), vertices[4].getX());
    line(vertices[3].getX(), vertices[3].getY(), vertices[4].getX(), vertices[4].getY());
  }

}
