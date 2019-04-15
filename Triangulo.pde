public class Triangulo extends FiguraGeometrica {

  public Triangulo(Vertice v1, Vertice v2, Vertice v3){
    super(2, 3);
    this.vertices[0][0] = v1.getX();
    this.vertices[1][0] = v1.getY();
    this.vertices[0][1] = v2.getX();
    this.vertices[1][1] = v2.getY();
    this.vertices[0][2] = v3.getX();
    this.vertices[1][2] = v3.getY();
  }

  public void drawTriangulo(){
    line(vertices[0][0], vertices[1][0], vertices[0][1], vertices[1][1]);
    line(vertices[0][0], vertices[1][0], vertices[0][2], vertices[1][2]);
    line(vertices[0][1], vertices[1][1], vertices[0][2], vertices[1][2]);
  }

}
