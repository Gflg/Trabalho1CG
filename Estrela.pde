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
  }
  
  public void drawEstrela() {

    transformacaoCoordenadas(this.vertices);

    // Partindo da ponta de cima
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    
    // Retas na horizontal
    line(vertices[1].getX(), vertices[1].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[4].getX(), vertices[4].getY());
 
    line(vertices[3].getX(), vertices[3].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[6].getX(), vertices[6].getY());
   
    // Juntando as pontas de baixo
    line(vertices[5].getX(), vertices[5].getY(), vertices[8].getX(), vertices[8].getY());
    line(vertices[6].getX(), vertices[6].getY(), vertices[9].getX(), vertices[9].getY());
    
    // Pontas de baixo
    line(vertices[7].getX(), vertices[7].getY(), vertices[8].getX(), vertices[8].getY());
    line(vertices[7].getX(), vertices[7].getY(), vertices[9].getX(), vertices[9].getY());
  }
  
}
