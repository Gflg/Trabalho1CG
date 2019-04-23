public class Fase3 extends Tela {
  float[][] rotacao = new float[2][2];
  public Fase3() {
    // Parametro para construtor da super classe é o numero da resposta
     super(4); 
  }
    
  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }
  
  public void setRotacao(float angulo){
    rotacao[0][0] = cos(angulo);
    rotacao[0][1] = -sin(angulo);
    rotacao[1][0] = sin(angulo);
    rotacao[1][1] = cos(angulo);
  }
  
  private void drawRetangulos() {
    //Criando vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(550, 0);
    verticesRetangulo[1] = new Vertice(600, 0);
    verticesRetangulo[2] = new Vertice(550, 100);
    verticesRetangulo[3] = new Vertice(600, 100);
    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);
    float[][] translacao = {{200},{-250}};
    
    setRotacao(PI/4);
    
    stroke(0);
    //As próximas coisas serão pintadas de verde
    //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
    //Quadrado criado abaixo
    for (int i=0; i<4; i++){
      q1.transformaVertice(i, rotacao);
      q1.moveVertice(i, translacao);
    }
    q1.drawQuadrilatero();
    
    fill(0);
    text("↓", verticesRetangulo[0].getX() + (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/3, (2*(verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);
    
    translacao[0][0] = 1000;
    translacao[1][0] = 570;
    
    setRotacao(3*(PI/4));
    
    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);
    for (int i=0; i<4; i++){
      q2.transformaVertice(i, rotacao);
      q2.moveVertice(i, translacao);
    }
    
    q2.drawQuadrilatero();
    
    fill(0);
    text("↓", verticesRetangulo[0].getX() + (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/3, (4*(verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);
    
    translacao[0][0] = 950;
    translacao[1][0] = 200;
    setRotacao(5*(PI/4));
    
    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);
    for (int i=0; i<4; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }
    
    q3.drawQuadrilatero();
    
    fill(0);
    text("↓", verticesRetangulo[0].getX() + (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/3, (6*(verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);
    
    /*translacao[0][0] = 0;
    translacao[1][0] = 500;
    setRotacao(7*(PI/4));
    
    Quadrilatero q4 = new Quadrilatero(verticesRetangulo[0], verticesRetangulo[1], verticesRetangulo[2], verticesRetangulo[3]);
    for (int i=0; i<4; i++){
      q4.transformaVertice(i, rotacao);
      q4.moveVertice(i, translacao);
    }
    
    q4.drawQuadrilatero();*/
    
    }
  
  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    //Criando vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(100, 800);
    verticesRetangulo[1] = new Vertice(150, 800);
    verticesRetangulo[2] = new Vertice(100, 900);
    verticesRetangulo[3] = new Vertice(150, 900);
    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);
    
    // <!-- Resposta 1
    q1.drawQuadrilatero();
    float[][] translacao = {{250},{0}};
    int translacaoX = 300;
    
    
    // -->
    
    // <!-- Resposta 2
    Vertice[] verticesRetangulo2 = new Vertice[4];
    verticesRetangulo2[0] = new Vertice(100, 825);
    verticesRetangulo2[1] = new Vertice(200, 825);
    verticesRetangulo2[2] = new Vertice(100, 875);
    verticesRetangulo2[3] = new Vertice(200, 875);
    Quadrilatero q2 = new Quadrilatero(verticesRetangulo2);
    for (int i=0; i<4; i++)
      q2.moveVertice(i, translacao);
    
    q2.drawQuadrilatero();
    
    // -->
    
    // <!-- Resposta 3
    translacao[0][0] = 1250;
    translacao[1][0] = 620;
    setRotacao(PI/4);
    
    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);
    for (int i=0; i<4; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }
    
    q3.drawQuadrilatero();
    
    // -->
    
    // <!-- Resposta 4
    translacao[0][0] = 370;
    translacao[1][0] = 745;
    setRotacao(7*(PI/4));
    
    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);
    for (int i=0; i<4; i++){
      q4.transformaVertice(i, rotacao);
      q4.moveVertice(i, translacao);
    }
    
    q4.drawQuadrilatero();
    //-->
  }

}
