public class Quadrilatero extends FiguraGeometrica {

  public Quadrilatero(Vertice[] verticesQuadrilatero){
    super(2, verticesQuadrilatero.length);
    this.vertices[0] = new Vertice(verticesQuadrilatero[0]);
    this.vertices[1] = new Vertice(verticesQuadrilatero[1]);
    this.vertices[2] = new Vertice(verticesQuadrilatero[2]);
    this.vertices[3] = new Vertice(verticesQuadrilatero[3]);
    Aresta[] arestas = new Aresta[4];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[2], vertices[3]);
    arestas[3] = new Aresta(vertices[1], vertices[3]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }
  
  public Quadrilatero(float primeiroPontoX, float primeiroPontoY, float largura, float altura) {
    super(2, 4);
    this.vertices[0] = new Vertice(primeiroPontoX, primeiroPontoY);
    this.vertices[1] = new Vertice(primeiroPontoX + largura, primeiroPontoY);
    this.vertices[2] = new Vertice(primeiroPontoX, primeiroPontoY + altura);
    this.vertices[3] = new Vertice(primeiroPontoX + largura, primeiroPontoY + altura);
    Aresta[] arestas = new Aresta[4];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[2], vertices[3]);
    arestas[3] = new Aresta(vertices[1], vertices[3]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }
  
  public void pintaFundo() {
    for (int i = 0; i + this.vertices[0].getY() < this.vertices[3].getY(); i++) {
      line(this.vertices[0].getX(), this.vertices[0].getY() + i, this.vertices[1].getX(), this.vertices[1].getY() + i);
    }
    stroke (0,0,0);
  }
  
}
