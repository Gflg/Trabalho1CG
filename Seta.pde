public class Seta extends FiguraGeometrica {

  public Seta(Vertice[] verticesSeta){
    super(2, verticesSeta.length);
    this.vertices[0] = new Vertice(verticesSeta[0]);
    this.vertices[1] = new Vertice(verticesSeta[1]);
    this.vertices[2] = new Vertice(verticesSeta[2]);
    this.vertices[3] = new Vertice(verticesSeta[3]);
    this.vertices[4] = new Vertice(verticesSeta[4]);
    this.vertices[5] = new Vertice(verticesSeta[5]);
    this.vertices[6] = new Vertice(verticesSeta[6]);
    
    Aresta[] arestas = new Aresta[7];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[2], vertices[3]);
    arestas[3] = new Aresta(vertices[1], vertices[4]);
    arestas[4] = new Aresta(vertices[3], vertices[5]);
    arestas[5] = new Aresta(vertices[4], vertices[6]);
    arestas[6] = new Aresta(vertices[5], vertices[6]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }

}
