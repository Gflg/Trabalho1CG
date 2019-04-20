public class Estrela extends FiguraGeometrica {
  
  public Estrela(Vertice v1) {
    super(2, 10);
    this.vertices[0][0] = v1.getX();
    this.vertices[1][0] = v1.getY();
    Vertice segundoNivel = new Vertice(v1.getX(), v1.getY() + 50);
    this.vertices[0][1] = segundoNivel.getX() - 25;
    this.vertices[1][1] = segundoNivel.getY();
    this.vertices[0][2] = segundoNivel.getX() + 25;
    this.vertices[1][2] = segundoNivel.getY();
    this.vertices[0][3] = this.vertices[0][1] - 50;
    this.vertices[1][3] = segundoNivel.getY();
    this.vertices[0][4] = this.vertices[0][2] + 50;
    this.vertices[1][4] = segundoNivel.getY();
    Vertice terceiroNivel = new Vertice(segundoNivel.getX(), segundoNivel.getY() + 40);
    this.vertices[0][5] = terceiroNivel.getX() - 35;
    this.vertices[1][5] = terceiroNivel.getY();
    this.vertices[0][6] = terceiroNivel.getX() + 35;
    this.vertices[1][6] = terceiroNivel.getY();
    Vertice quartoNivel = new Vertice(terceiroNivel.getX(), terceiroNivel.getY() + 25);
    this.vertices[0][7] = quartoNivel.getX();
    this.vertices[1][7] = quartoNivel.getY();
    this.vertices[0][8] = quartoNivel.getX() - 50;
    this.vertices[1][8] = quartoNivel.getY() + 25;
    this.vertices[0][9] = quartoNivel.getX() + 50;
    this.vertices[1][9] = quartoNivel.getY() + 25;
  }
  
  public void drawEstrela() {
    // Partindo da ponta de cima
    line(vertices[0][0], vertices[1][0], vertices[0][1], vertices[1][1]);
    line(vertices[0][0], vertices[1][0], vertices[0][2], vertices[1][2]);
    
    // Retas na horizontal
    line(vertices[0][1], vertices[1][1], vertices[0][3], vertices[1][3]);
    line(vertices[0][2], vertices[1][2], vertices[0][4], vertices[1][4]);
    
    line(vertices[0][3], vertices[1][3], vertices[0][5], vertices[1][5]);
    line(vertices[0][4], vertices[1][4], vertices[0][6], vertices[1][6]);
    
    // Juntando as pontas de baixo
    line(vertices[0][5], vertices[1][5], vertices[0][8], vertices[1][8]);
    line(vertices[0][6], vertices[1][6], vertices[0][9], vertices[1][9]);
    
    // Pontas de baixo
    line(vertices[0][7], vertices[1][7], vertices[0][8], vertices[1][8]);
    line(vertices[0][7], vertices[1][7], vertices[0][9], vertices[1][9]);
  }
  
}
