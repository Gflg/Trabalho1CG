public class Aresta {
  
  public Vertice[] vertices;
  
  public Aresta(Vertice v1, Vertice v2) {
    this.vertices = new Vertice[2];
    this.vertices[0] = v1;
    this.vertices[1] = v2;
  }
  
  public void drawAresta() {
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
  }
  
}
