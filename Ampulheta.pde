public class Ampulheta extends FiguraGeometrica {

  public Ampulheta(Vertice[] verticesAmpulheta){
    super(2, verticesAmpulheta.length);
    this.vertices[0] = new Vertice(verticesAmpulheta[0]);
    this.vertices[1] = new Vertice(verticesAmpulheta[1]);
    this.vertices[2] = new Vertice(verticesAmpulheta[2]);
    this.vertices[3] = new Vertice(verticesAmpulheta[3]);
    this.vertices[4] = new Vertice(verticesAmpulheta[4]);
    Aresta[] arestas = new Aresta[6];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[0], vertices[3]);
    arestas[3] = new Aresta(vertices[0], vertices[4]);
    arestas[4] = new Aresta(vertices[1], vertices[2]);
    arestas[5] = new Aresta(vertices[3], vertices[4]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }

}
