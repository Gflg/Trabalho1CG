public class Triangulo extends FiguraGeometrica {

  public Triangulo(Vertice[] verticesTriangulo){
    super(2, verticesTriangulo.length);
    this.vertices[0] = new Vertice(verticesTriangulo[0]);
    this.vertices[1] = new Vertice(verticesTriangulo[1]);
    this.vertices[2] = new Vertice(verticesTriangulo[2]);
  }

  public void drawTriangulo(){
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[2].getX(), vertices[2].getY());
  }

}