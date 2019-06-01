public class Face {
  
  public Aresta[] arestas;
  
  public Face(int qtdArestas) {
    this.arestas = new Aresta[qtdArestas];    
  }
  
  public Face(Aresta... arestas) {
    this.arestas = arestas;
  }
  
  public void drawFace() {
    for(int i = 0; i < arestas.length; i++) {
      arestas[i].drawAresta();
    }
  }
  
}
