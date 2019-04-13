public class Fase2 extends Tela {
  
  public Fase2() {
    // Parametro para construtor da super classe é o numero da resposta
     super(4); 
  }
    
  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }
  
  private void drawRetangulos() {
    //Criando vértices do Retângulo
    Vertice v1Retangulo = new Vertice(550, 0);
    Vertice v2Retangulo = new Vertice(650, 0);
    Vertice v3Retangulo = new Vertice(550, 100);
    Vertice v4Retangulo = new Vertice(650, 100);
    Quadrilatero q1 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    
    stroke(0);
    //As próximas coisas serão pintadas de verde
    //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
    //Quadrado criado abaixo
    q1.drawQuadrilatero();
    float[][] translacao = {{100},{0}};
    Quadrilatero q2 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q2.moveVertice(i, translacao);
    
    q2.drawQuadrilatero();
  
    //Fonte do texto
    fill(255,192,203);
    textSize(40);
    text("P", v1Retangulo.getX() + 35, v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    text("7", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    
    fill(0);
    text("↓", v1Retangulo.getX() + 90, v4Retangulo.getY() - v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    
    //Segunda linha de retangulos
    translacao[0][0] = 0;
    translacao[1][0] = 2*(v4Retangulo.getY() - v2Retangulo.getY());
    Quadrilatero q3 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q3.moveVertice(i, translacao);
    
    q3.drawQuadrilatero();
    
    translacao[0][0] = 100;
    Quadrilatero q4 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q4.moveVertice(i, translacao);
    
    q4.drawQuadrilatero();
    
    fill(255,0,0);
    text("R", v1Retangulo.getX() + 35, (v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    text("5", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, (v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    
    fill(0);
    text("↓", v1Retangulo.getX() + 90, 2*(v4Retangulo.getY() - v2Retangulo.getY()) + 160); //Posição inicial do texto x e y
   
    //Terceira linha vazia
   
    textSize(40);
    text("↓", v1Retangulo.getX() + 90, 4*(v4Retangulo.getY() - v2Retangulo.getY()) + 160); //Posição inicial do texto x e y
    
    //Quarta linha
    translacao[0][0] = 0;
    translacao[1][0] = 6*(v4Retangulo.getY() - v2Retangulo.getY());
    Quadrilatero q5 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q5.moveVertice(i, translacao);
    
    q5.drawQuadrilatero();
    
    translacao[0][0] = 100;
    Quadrilatero q6 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q6.moveVertice(i, translacao);
    
    q6.drawQuadrilatero();
    
    fill(139,0,255);
    text("V", v1Retangulo.getX() + 35, (v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    text("1", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, (v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
  }
  
  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    //Criando vértices do Retângulo
    Vertice v1Retangulo = new Vertice(50, 800);
    Vertice v2Retangulo = new Vertice(130, 800);
    Vertice v3Retangulo = new Vertice(50, 900);
    Vertice v4Retangulo = new Vertice(130, 900);
    Quadrilatero q1 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    
    int translacaoX = 300;
    
    // <!-- Resposta 1
    q1.drawQuadrilatero();
    float[][] translacao = {{80},{0}};
    Quadrilatero q2 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q2.moveVertice(i, translacao);
    
    q2.drawQuadrilatero();
    
    fill(74, 132, 232);
    textSize(40);
    text("S", v1Retangulo.getX() + 30, v2Retangulo.getY() + 60);
    text("2", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 30, v2Retangulo.getY() + 60);
    
    // -->
    
    // <!-- Resposta 2
    translacao[0][0] += 220;
    Quadrilatero q3 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q3.moveVertice(i, translacao);
    
    q3.drawQuadrilatero();
    
    translacao[0][0] += 80;
    Quadrilatero q4 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q4.moveVertice(i, translacao);
    
    q4.drawQuadrilatero();
    
    fill(48,213,200);
    textSize(40);
    text("T", v1Retangulo.getX() + 30 + translacaoX, v2Retangulo.getY() + 60);
    text("4", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 30 + translacaoX, v2Retangulo.getY() + 60);
    
    // -->
    
    // <!-- Resposta 3
    translacao[0][0] += 220;
    Quadrilatero q5 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q5.moveVertice(i, translacao);
    
    q5.drawQuadrilatero();
    
    translacao[0][0] += 80;
    Quadrilatero q6 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q6.moveVertice(i, translacao);
    
    q6.drawQuadrilatero();
    
    fill(255, 255, 0);
    textSize(40);
    text("T", v1Retangulo.getX() + 30 + translacaoX * 2, v2Retangulo.getY() + 60);
    text("3", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 30 + translacaoX * 2, v2Retangulo.getY() + 60);
    
    // -->
    
    // <!-- Resposta 4
    translacao[0][0] += 220;
    Quadrilatero q7 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q7.moveVertice(i, translacao);
    
    q7.drawQuadrilatero();
    
    translacao[0][0] += 80;
    Quadrilatero q8 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++)
      q8.moveVertice(i, translacao);
    
    q8.drawQuadrilatero();
    
    fill(48,213,200);
    textSize(40);
    text("T", v1Retangulo.getX() + 30 + translacaoX * 3, v2Retangulo.getY() + 60);
    text("3", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 30 + translacaoX * 3, v2Retangulo.getY() + 60);
    
    //-->
  }

}
