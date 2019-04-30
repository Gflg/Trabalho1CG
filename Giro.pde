public class Giro extends FiguraGeometrica {

  public Giro(Vertice[] verticesGiro){
    super(2, verticesGiro.length);
    this.vertices[0] = new Vertice(verticesGiro[0]);
    this.vertices[1] = new Vertice(verticesGiro[1]);
    this.vertices[2] = new Vertice(verticesGiro[2]);
    this.vertices[3] = new Vertice(verticesGiro[3]);
    this.vertices[4] = new Vertice(verticesGiro[4]);
    this.vertices[5] = new Vertice(verticesGiro[5]);
    this.vertices[6] = new Vertice(verticesGiro[6]);
    this.vertices[7] = new Vertice(verticesGiro[7]);
    this.vertices[8] = new Vertice(verticesGiro[8]);
    
    Aresta[] arestas = new Aresta[16];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[0], vertices[3]);
    arestas[3] = new Aresta(vertices[0], vertices[4]);
    arestas[4] = new Aresta(vertices[0], vertices[5]);
    arestas[5] = new Aresta(vertices[0], vertices[6]);
    arestas[6] = new Aresta(vertices[0], vertices[7]);
    arestas[7] = new Aresta(vertices[0], vertices[8]);
    arestas[8] = new Aresta(vertices[1], vertices[2]);
    arestas[9] = new Aresta(vertices[2], vertices[3]);
    arestas[10] = new Aresta(vertices[3], vertices[4]);
    arestas[11] = new Aresta(vertices[4], vertices[5]);
    arestas[12] = new Aresta(vertices[5], vertices[6]);
    arestas[13] = new Aresta(vertices[6], vertices[7]);
    arestas[14] = new Aresta(vertices[7], vertices[8]);
    arestas[15] = new Aresta(vertices[8], vertices[1]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }

}
