public class Decagono extends FiguraGeometrica {

  public Decagono(Vertice pontaDecagono){
    super(2, 10);
    this.vertices[0] = new Vertice(pontaDecagono);
    this.vertices[1] = new Vertice(pontaDecagono.getX() - 40, pontaDecagono.getY() + 30);
    this.vertices[2] = new Vertice(pontaDecagono.getX() + 40, pontaDecagono.getY() + 30);
    this.vertices[3] = new Vertice(pontaDecagono.getX() - 60, pontaDecagono.getY() + 60);
    this.vertices[4] = new Vertice(pontaDecagono.getX() + 60, pontaDecagono.getY() + 60);
    this.vertices[5] = new Vertice(pontaDecagono.getX() - 60, pontaDecagono.getY() + 90);
    this.vertices[6] = new Vertice(pontaDecagono.getX() + 60, pontaDecagono.getY() + 90);
    this.vertices[7] = new Vertice(pontaDecagono.getX() - 40, pontaDecagono.getY() + 120);
    this.vertices[8] = new Vertice(pontaDecagono.getX() + 40, pontaDecagono.getY() + 120);
    this.vertices[9] = new Vertice(pontaDecagono.getX(), pontaDecagono.getY() + 130);
  }

  public void drawDecagono() {
    //transformacaoCoordenadas(this.vertices);
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[4].getX(), vertices[4].getY());
    line(vertices[3].getX(), vertices[3].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[6].getX(), vertices[6].getY());
    line(vertices[5].getX(), vertices[5].getY(), vertices[7].getX(), vertices[7].getY());
    line(vertices[6].getX(), vertices[6].getY(), vertices[8].getX(), vertices[8].getY());
    line(vertices[7].getX(), vertices[7].getY(), vertices[9].getX(), vertices[9].getY());
    line(vertices[8].getX(), vertices[8].getY(), vertices[9].getX(), vertices[9].getY());
  }

}
