public class Pentagono extends FiguraGeometrica {

  public Pentagono(Vertice pontaPentagono){
    super(2, 5);
    this.vertices[0] = new Vertice(pontaPentagono);
    this.vertices[1] = new Vertice(pontaPentagono.getX() - 35, pontaPentagono.getY() + 30);
    this.vertices[2] = new Vertice(pontaPentagono.getX() + 35, pontaPentagono.getY() + 30);
    this.vertices[3] = new Vertice(pontaPentagono.getX() - 25, pontaPentagono.getY() + 70);
    this.vertices[4] = new Vertice(pontaPentagono.getX() + 25, pontaPentagono.getY() + 70);
    
    Aresta[] arestas = new Aresta[5];
    arestas[0] = new Aresta(vertices[0], vertices[1]);
    arestas[1] = new Aresta(vertices[0], vertices[2]);
    arestas[2] = new Aresta(vertices[1], vertices[3]);
    arestas[3] = new Aresta(vertices[2], vertices[4]);
    arestas[4] = new Aresta(vertices[3], vertices[4]);
    this.faces = new Face[1];
    this.faces[0] = new Face(arestas);
    transformacaoCoordenadas(this.vertices);
  }
  
}
