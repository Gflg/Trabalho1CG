public class Triangulo extends FiguraGeometrica {

  public Triangulo(Vertice[] verticesTriangulo){
    super(2, verticesTriangulo.length);
    this.vertices[0] = new Vertice(verticesTriangulo[0]);
    this.vertices[1] = new Vertice(verticesTriangulo[1]);
    this.vertices[2] = new Vertice(verticesTriangulo[2]);
    
    Aresta[] arestas = new Aresta[3];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[1], vertices[2]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }

}
