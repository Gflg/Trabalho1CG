public class Aresta {
  
  public Vertice[] vertices;
  
  public Aresta(Vertice v1, Vertice v2) {
    this.vertices = new Vertice[2];
    this.vertices[0] = v1;
    this.vertices[1] = v2;
  }
  
  public void drawAresta() {
    if (vertices[0].getQtdDimensoes() == 2){
      line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    }
    else{
      line(vertices[0].getX(), vertices[0].getY(), vertices[0].getZ(), vertices[1].getX(), vertices[1].getY(), vertices[1].getZ());
    }
  }
  
}
