public class LouTouZ extends FiguraGeometrica {

  public LouTouZ(Vertice[] verticesLouTouZ){
    super(2, verticesLouTouZ.length);
    this.vertices[0] = new Vertice(verticesLouTouZ[0]);
    this.vertices[1] = new Vertice(verticesLouTouZ[1]);
    this.vertices[2] = new Vertice(verticesLouTouZ[2]);
    this.vertices[3] = new Vertice(verticesLouTouZ[3]);
    this.vertices[4] = new Vertice(verticesLouTouZ[4]);
    this.vertices[5] = new Vertice(verticesLouTouZ[5]);
    this.vertices[6] = new Vertice(verticesLouTouZ[6]);
    this.vertices[7] = new Vertice(verticesLouTouZ[7]);
    
    Aresta[] arestas = new Aresta[8];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[2], vertices[3]);
    arestas[3] = new Aresta(vertices[1], vertices[3]);
    arestas[4] = new Aresta(vertices[4], vertices[5]);
    arestas[5] = new Aresta(vertices[4], vertices[6]);
    arestas[6] = new Aresta(vertices[6], vertices[7]);
    arestas[7] = new Aresta(vertices[5], vertices[7]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }

}
