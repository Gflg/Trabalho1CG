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
    Vertice v1Retangulo = new Vertice(550, 0);
    Vertice v2Retangulo = new Vertice(600, 0);
    Vertice v3Retangulo = new Vertice(550, 100);
    Vertice v4Retangulo = new Vertice(600, 100);
    Quadrilatero q1 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
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
    text("↓", v1Retangulo.getX() + (v4Retangulo.getX() - v1Retangulo.getX())/3, (2*(v4Retangulo.getY() - v2Retangulo.getY())) - 50);
    
    translacao[0][0] = 1000;
    translacao[1][0] = 570;
    
    setRotacao(3*(PI/4));
    
    Quadrilatero q2 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++){
      q2.transformaVertice(i, rotacao);
      q2.moveVertice(i, translacao);
    }
    
    q2.drawQuadrilatero();
    
    fill(0);
    text("↓", v1Retangulo.getX() + (v4Retangulo.getX() - v1Retangulo.getX())/3, (4*(v4Retangulo.getY() - v2Retangulo.getY())) - 50);
    
    translacao[0][0] = 950;
    translacao[1][0] = 200;
    setRotacao(5*(PI/4));
    
    Quadrilatero q3 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }
    
    q3.drawQuadrilatero();
    
    fill(0);
    text("↓", v1Retangulo.getX() + (v4Retangulo.getX() - v1Retangulo.getX())/3, (6*(v4Retangulo.getY() - v2Retangulo.getY())) - 50);
    
    /*translacao[0][0] = 0;
    translacao[1][0] = 500;
    setRotacao(7*(PI/4));
    
    Quadrilatero q4 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
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
    Vertice v1Retangulo = new Vertice(100, 800);
    Vertice v2Retangulo = new Vertice(150, 800);
    Vertice v3Retangulo = new Vertice(100, 900);
    Vertice v4Retangulo = new Vertice(150, 900);
    Quadrilatero q1 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    
    // <!-- Resposta 1
    q1.drawQuadrilatero();
    float[][] translacao = {{250},{0}};
    int translacaoX = 300;
    
    
    // -->
    
    // <!-- Resposta 2
    Vertice v5Retangulo = new Vertice(100, 825);
    Vertice v6Retangulo = new Vertice(200, 825);
    Vertice v7Retangulo = new Vertice(100, 875);
    Vertice v8Retangulo = new Vertice(200, 875);
    Quadrilatero q2 = new Quadrilatero(v5Retangulo, v6Retangulo, v7Retangulo, v8Retangulo);
    for (int i=0; i<4; i++)
      q2.moveVertice(i, translacao);
    
    q2.drawQuadrilatero();
    
    // -->
    
    // <!-- Resposta 3
    translacao[0][0] = 1250;
    translacao[1][0] = 620;
    setRotacao(PI/4);
    
    Quadrilatero q3 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
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
    
    Quadrilatero q4 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++){
      q4.transformaVertice(i, rotacao);
      q4.moveVertice(i, translacao);
    }
    
    q4.drawQuadrilatero();
    //-->
  }

}
