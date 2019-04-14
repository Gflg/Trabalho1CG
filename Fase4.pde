public class Fase4 extends Tela {
  float[][] rotacao = new float[2][2];
  public Fase4() {
    // Parametro para construtor da super classe é o numero da resposta
     super(1); 
  }
    
  public void drawTela() {
    drawSetas();
    drawTriangulos();
    drawRespostas();
  }
  
  public void setRotacao(float angulo){
    rotacao[0][0] = cos(angulo);
    rotacao[0][1] = -sin(angulo);
    rotacao[1][0] = sin(angulo);
    rotacao[1][1] = cos(angulo);
  }
  
  private void drawSetas() {
    //Criando vértices do Retângulo
    Vertice v1Pentagono = new Vertice(600, 120);
    Vertice v2Pentagono = new Vertice(600, 60);
    Vertice v3Pentagono = new Vertice(660, 120);
    Vertice v4Pentagono = new Vertice(660, 60);
    Vertice v5Pentagono = new Vertice(630, 0);
    
    fill(0);
    text("↓", v1Pentagono.getX() + (v4Pentagono.getX() - v1Pentagono.getX())/3, (1.5*(v3Pentagono.getY() - v5Pentagono.getY())));
    
    text("↓", v1Pentagono.getX() + (v4Pentagono.getX() - v1Pentagono.getX())/3, (3.15*(v3Pentagono.getY() - v5Pentagono.getY())));
    
    text("↓", v1Pentagono.getX() + (v4Pentagono.getX() - v1Pentagono.getX())/3, (4.8*(v3Pentagono.getY() - v5Pentagono.getY())));
    
    text("→", v1Pentagono.getX() + 125, (5.7*(v3Pentagono.getY() - v5Pentagono.getY())));
  } 
  
  private void drawTriangulos() {
    float[][] translacao = {{0},{200}};
    //Criando os vértices do Triângulo
    Vertice v1Triangulo = new Vertice(630, 60);
    Vertice v2Triangulo = new Vertice(660, 60);
    Vertice v3Triangulo = new Vertice(630, 0);
    Triangulo t1 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    
    Triangulo t5 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t5.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t9 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t9.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t13 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t13.moveVertice(i, translacao);
    
    Vertice v4Triangulo = new Vertice(630, 60);
    Vertice v5Triangulo = new Vertice(v2Triangulo.getX() - 2*(v2Triangulo.getX() - v1Triangulo.getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    Vertice v6Triangulo = new Vertice(630, 0);
    Triangulo t2 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    
    translacao[1][0] = 200;
    Triangulo t6 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t6.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t10 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t10.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t14 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t14.moveVertice(i, translacao);
    
    Vertice v7Triangulo = new Vertice(600, 120);
    Vertice v8Triangulo = new Vertice(660, 120);
    Vertice v9Triangulo = new Vertice(600, 60);
    Triangulo t3 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    
    translacao[1][0] = 200;
    Triangulo t7 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t7.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t11 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t11.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t15 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t15.moveVertice(i, translacao);
    
    Vertice v10Triangulo = new Vertice(v7Triangulo.getX() + (v8Triangulo.getX() - v7Triangulo.getX()), v8Triangulo.getY() - (v8Triangulo.getY() - v9Triangulo.getY()));
    Vertice v11Triangulo = new Vertice(660, 120);
    Vertice v12Triangulo = new Vertice(600, 60);
    Triangulo t4 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    
    translacao[1][0] = 200;
    Triangulo t8 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t8.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t12 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t12.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t16 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t16.moveVertice(i, translacao);
    
    //---> Começo do desenho da primeira imagem
    stroke(0);
    t2.drawTriangulo();
    t3.drawTriangulo();
    t4.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);
    t1.drawTriangulo();
     
    //<--- Fim da primeira imagem
    
    //---> Começo do desenho da segunda imagem
    stroke(0);
    
    t5.drawTriangulo();
    t6.drawTriangulo();
    t7.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);
    t8.drawTriangulo();
    
    //<--- Fim da segunda imagem
    
    //---> Começo do desenho da terceira imagem
    stroke(0);
    
    t9.drawTriangulo();
    t11.drawTriangulo();
    t12.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);
    t10.drawTriangulo();
    
    //<--- Fim da terceira imagem
    
    //---> Começo do desenho da quarta imagem
    stroke(0);
    
    t13.drawTriangulo();
    t14.drawTriangulo();
    t15.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);
    t16.drawTriangulo();
    //<--- Fim da quarta imagem
    stroke(0);
    
    }
  
  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{-500},{800}};
    
    //Triangulo do topo - direita
    Vertice v1Triangulo = new Vertice(630, 60);
    Vertice v2Triangulo = new Vertice(660, 60);
    Vertice v3Triangulo = new Vertice(630, 0);
    
    Triangulo t1 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t1.moveVertice(i, translacao);
      
    translacao[0][0] += 300;
    
    Triangulo t5 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t5.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t9 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t9.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t13 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++)
      t13.moveVertice(i, translacao);
      
    //Triangulo do topo - esquerda
    Vertice v4Triangulo = new Vertice(630, 60);
    Vertice v5Triangulo = new Vertice(v2Triangulo.getX() - 2*(v2Triangulo.getX() - v1Triangulo.getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    Vertice v6Triangulo = new Vertice(630, 0);
    
    translacao[0][0] = -500;
    Triangulo t2 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t2.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t6 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t6.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t10 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t10.moveVertice(i, translacao);
    
    translacao[0][0] += 350;
    
    Triangulo t14 = new Triangulo(v4Triangulo, v5Triangulo, v6Triangulo);
    for (int i=0; i<3; i++)
      t14.moveVertice(i, translacao);
    
    
    //Triangulo de baixo - esquerda
    Vertice v7Triangulo = new Vertice(600, 120);
    Vertice v8Triangulo = new Vertice(660, 120);
    Vertice v9Triangulo = new Vertice(600, 60);
    
    translacao[0][0] = -500;
    Triangulo t3 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t3.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t7 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t7.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t11 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t11.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t15 = new Triangulo(v7Triangulo, v8Triangulo, v9Triangulo);
    for (int i=0; i<3; i++)
      t15.moveVertice(i, translacao);
      
      
    
    //Triangulo de baixo - direita
    Vertice v10Triangulo = new Vertice(v7Triangulo.getX() + (v8Triangulo.getX() - v7Triangulo.getX()), v8Triangulo.getY() - (v8Triangulo.getY() - v9Triangulo.getY()));
    Vertice v11Triangulo = new Vertice(660, 120);
    Vertice v12Triangulo = new Vertice(600, 60);
    
    translacao[0][0] = -500;
    Triangulo t4 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t4.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t8 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t8.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t12 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t12.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t16 = new Triangulo(v10Triangulo, v11Triangulo, v12Triangulo);
    for (int i=0; i<3; i++)
      t16.moveVertice(i, translacao);
    
    // <!-- Resposta 1
    t1.drawTriangulo();
    t2.drawTriangulo();
    t3.drawTriangulo();
    stroke(255,0,0);
    t4.drawTriangulo();
    stroke(0);
    
    // -->
    
    // <!-- Resposta 2
    t5.drawTriangulo();
    stroke(255,0,0);
    t6.drawTriangulo();
    stroke(0);
    t7.drawTriangulo();
    t8.drawTriangulo();
    
    // -->
    
    // <!-- Resposta 3
    stroke(255,0,0);
    t9.drawTriangulo();
    stroke(0);
    t10.drawTriangulo();
    t11.drawTriangulo();
    t12.drawTriangulo();
    // -->
    
    // <!-- Resposta 4
    t13.drawTriangulo();
    t14.drawTriangulo();
    stroke(255,0,0);
    t15.drawTriangulo();
    stroke(0);
    t16.drawTriangulo();
    //-->
  }

}
