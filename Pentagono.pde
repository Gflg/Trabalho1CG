public class Pentagono extends FiguraGeometrica {

  public Pentagono(Vertice pontaPentagono){
    super(2, 5);
    this.vertices[0] = new Vertice(pontaPentagono);
    this.vertices[1] = new Vertice(pontaPentagono.getX() - 35, pontaPentagono.getY() + 30);
    this.vertices[2] = new Vertice(pontaPentagono.getX() + 35, pontaPentagono.getY() + 30);
    this.vertices[3] = new Vertice(pontaPentagono.getX() - 25, pontaPentagono.getY() + 70);
    this.vertices[4] = new Vertice(pontaPentagono.getX() + 25, pontaPentagono.getY() + 70);
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
