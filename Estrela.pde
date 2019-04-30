public class Estrela extends FiguraGeometrica {

  public Estrela() {
   super(2, 10);
  }

  public Estrela(Vertice v1) {
    super(2, 10);
    this.vertices[0] = new Vertice(v1);
    Vertice segundoNivel = new Vertice(v1.getX(), v1.getY() + 25);
    this.vertices[1] = new Vertice(segundoNivel.getX() - 12.5, segundoNivel.getY());
    this.vertices[2] = new Vertice(segundoNivel.getX() + 12.5, segundoNivel.getY());
    this.vertices[3] = new Vertice(this.vertices[1].getX() - 25, segundoNivel.getY());
    this.vertices[4] = new Vertice(this.vertices[2].getX() + 25, segundoNivel.getY());
    Vertice terceiroNivel = new Vertice(segundoNivel.getX(), segundoNivel.getY() + 20);
    this.vertices[5] = new Vertice(terceiroNivel.getX() - 17.5, terceiroNivel.getY());
    this.vertices[6] = new Vertice(terceiroNivel.getX() + 17.5, terceiroNivel.getY());
    Vertice quartoNivel = new Vertice(terceiroNivel.getX(), terceiroNivel.getY() + 12.5);
    this.vertices[7] = new Vertice(quartoNivel);
    this.vertices[8] = new Vertice(quartoNivel.getX() - 25, quartoNivel.getY() + 12.5);
    this.vertices[9] = new Vertice(quartoNivel.getX() + 25, quartoNivel.getY() + 12.5);
    
    Aresta[] arestas = new Aresta[10];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[1], vertices[3]);
    arestas[3] = new Aresta(vertices[2], vertices[4]);
    arestas[4] = new Aresta(vertices[3], vertices[5]);
    arestas[5] = new Aresta(vertices[4], vertices[6]);
    arestas[6] = new Aresta(vertices[5], vertices[8]);
    arestas[7] = new Aresta(vertices[6], vertices[9]);
    arestas[8] = new Aresta(vertices[7], vertices[8]);
    arestas[9] = new Aresta(vertices[7], vertices[9]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }
  
}
