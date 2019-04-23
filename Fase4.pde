public class Fase4 extends Tela {
  public Fase4() {
    // Parametro para construtor da super classe é o numero da resposta
     super(1); 
  }
    
  public void drawTela() {
    drawSetas();
    drawTriangulos();
    drawRespostas();
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
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(630, 60);
    verticesTriangulo[1] = new Vertice(660, 60);
    verticesTriangulo[2] = new Vertice(630, 0);
    Triangulo t1 = new Triangulo(verticesTriangulo);
    
    Triangulo t5 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t5.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t9.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t13 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t13.moveVertice(i, translacao);
    
    Vertice[] verticesTriangulo2 = new Vertice[3];
    verticesTriangulo2[0] = new Vertice(630, 60);
    verticesTriangulo2[1] = new Vertice(verticesTriangulo[1].getX() - 2*(verticesTriangulo[1].getX() - verticesTriangulo[0].getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTriangulo2[2] = new Vertice(630, 0);
    Triangulo t2 = new Triangulo(verticesTriangulo2);
    
    translacao[1][0] = 200;
    Triangulo t6 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t6.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t10 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t10.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t14 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t14.moveVertice(i, translacao);
    
    Vertice[] verticesTriangulo3 = new Vertice[3];
    verticesTriangulo3[0] = new Vertice(600, 120);
    verticesTriangulo3[1] = new Vertice(660, 120);
    verticesTriangulo3[2] = new Vertice(600, 60);
    Triangulo t3 = new Triangulo(verticesTriangulo3);
    
    translacao[1][0] = 200;
    Triangulo t7 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t7.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t11 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t11.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t15 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t15.moveVertice(i, translacao);
    
    Vertice[] verticesTriangulo4 = new Vertice[3];
    verticesTriangulo4[0] = new Vertice(verticesTriangulo3[0].getX() + (verticesTriangulo3[1].getX() - verticesTriangulo3[0].getX()), verticesTriangulo3[1].getY() - (verticesTriangulo3[1].getY() - verticesTriangulo3[2].getY()));
    verticesTriangulo4[1] = new Vertice(660, 120);
    verticesTriangulo4[2] = new Vertice(600, 60);
    Triangulo t4 = new Triangulo(verticesTriangulo4);
    
    translacao[1][0] = 200;
    Triangulo t8 = new Triangulo(verticesTriangulo4);
    for (int i=0; i<3; i++)
      t8.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    
    Triangulo t12 = new Triangulo(verticesTriangulo4);
    for (int i=0; i<3; i++)
      t12.moveVertice(i, translacao);
      
    translacao[1][0] += 200;
    
    Triangulo t16 = new Triangulo(verticesTriangulo4);
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
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(630, 60);
    verticesTriangulo[1] = new Vertice(660, 60);
    verticesTriangulo[2] = new Vertice(630, 0);
    
    Triangulo t1 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t1.moveVertice(i, translacao);
      
    translacao[0][0] += 300;
    
    Triangulo t5 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t5.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t9.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t13 = new Triangulo(verticesTriangulo);
    for (int i=0; i<3; i++)
      t13.moveVertice(i, translacao);
      
    //Triangulo do topo - esquerda
    Vertice[] verticesTriangulo2 = new Vertice[3];
    verticesTriangulo2[0] = new Vertice(630, 60);
    verticesTriangulo2[1] = new Vertice(verticesTriangulo[1].getX() - 2*(verticesTriangulo[1].getX() - verticesTriangulo[0].getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTriangulo2[2] = new Vertice(630, 0);
    
    translacao[0][0] = -500;
    Triangulo t2 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t2.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t6 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t6.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t10 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t10.moveVertice(i, translacao);
    
    translacao[0][0] += 350;
    
    Triangulo t14 = new Triangulo(verticesTriangulo2);
    for (int i=0; i<3; i++)
      t14.moveVertice(i, translacao);
    
    
    //Triangulo de baixo - esquerda
    Vertice[] verticesTriangulo3 = new Vertice[3];
    verticesTriangulo3[0] = new Vertice(600, 120);
    verticesTriangulo3[1] = new Vertice(660, 120);
    verticesTriangulo3[2] = new Vertice(600, 60);
    
    translacao[0][0] = -500;
    Triangulo t3 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t3.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t7 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t7.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t11 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t11.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t15 = new Triangulo(verticesTriangulo3);
    for (int i=0; i<3; i++)
      t15.moveVertice(i, translacao);
      
      
    
    //Triangulo de baixo - direita
    Vertice[] verticesTriangulo4 = new Vertice[3];
    verticesTriangulo4[0] = new Vertice(verticesTriangulo3[0].getX() + (verticesTriangulo3[1].getX() - verticesTriangulo3[0].getX()), verticesTriangulo3[1].getY() - (verticesTriangulo3[1].getY() - verticesTriangulo3[2].getY()));
    verticesTriangulo4[1] = new Vertice(660, 120);
    verticesTriangulo4[2] = new Vertice(600, 60);
    
    translacao[0][0] = -500;
    Triangulo t4 = new Triangulo(verticesTriangulo4);
    for (int i=0; i<3; i++)
      t4.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    Triangulo t8 = new Triangulo(verticesTriangulo4);
    for (int i=0; i<3; i++)
      t8.moveVertice(i, translacao);
    
    translacao[0][0] += 300;
    
    Triangulo t12 = new Triangulo(verticesTriangulo4);
    for (int i=0; i<3; i++)
      t12.moveVertice(i, translacao);
      
    translacao[0][0] += 350;
    
    Triangulo t16 = new Triangulo(verticesTriangulo4);
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
