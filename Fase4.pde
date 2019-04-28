public class Fase4 extends Tela {

  float[][] rotacao = new float[2][2];

  public Fase4() {
    super(1); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
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
    //Criando os vértices do Pentágono
    float[][] translacao = {{600},{60}};
    Vertice[] verticesPentagono = new Vertice[5];
    verticesPentagono[0] = new Vertice(0, 60);
    verticesPentagono[1] = new Vertice(0, 0);
    verticesPentagono[2] = new Vertice(60, 60);
    verticesPentagono[3] = new Vertice(60, 0);
    verticesPentagono[4] = new Vertice(30, -60);

    fill(0);
    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (1.5 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (3.15 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (4.8 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("→",translacao[0][0] + verticesPentagono[0].getX() + 125, (5.7 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

  }

  private void drawTriangulos() {

    float[][] translacao = {{630},{60}};

    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(0, 0);
    verticesTriangulo[1] = new Vertice(30, 0);
    verticesTriangulo[2] = new Vertice(0, -60);

    Triangulo t1 = new Triangulo(verticesTriangulo);
    for (int i = 0; i < verticesTriangulo.length; i++)
      t1.moveVertice(i, translacao);
    
    translacao[1][0] += 200;
    Triangulo t5 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++)
      t5.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t9 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++)
      t9.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t13 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++)
      t13.moveVertice(i, translacao);

    //Criando os vértices do Triângulo
    translacao[0][0] = 630;
    translacao[1][0] = 60;
    Vertice[] verticesTriangulo2 = new Vertice[3];
    verticesTriangulo2[0] = new Vertice(0, 0);
    verticesTriangulo2[1] = new Vertice(verticesTriangulo[1].getX() - 2 * (verticesTriangulo[1].getX() - verticesTriangulo[0].getX()), 0); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTriangulo2[2] = new Vertice(0, -60);

    Triangulo t2 = new Triangulo(verticesTriangulo2);
    for (int i = 0; i < verticesTriangulo2.length; i++)
      t2.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t6 = new Triangulo(verticesTriangulo2);

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t6.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t10 = new Triangulo(verticesTriangulo2);

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t10.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t14 = new Triangulo(verticesTriangulo2);

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t14.moveVertice(i, translacao);

    //Criando os vértices do Triângulo
    translacao[0][0] = 600;
    translacao[1][0] = 120;
    Vertice[] verticesTriangulo3 = new Vertice[3];
    verticesTriangulo3[0] = new Vertice(0, 0);
    verticesTriangulo3[1] = new Vertice(60, 0);
    verticesTriangulo3[2] = new Vertice(0, -60);

    Triangulo t3 = new Triangulo(verticesTriangulo3);
    for (int i = 0; i < verticesTriangulo3.length; i++)
      t3.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t7 = new Triangulo(verticesTriangulo3);

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t7.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t11 = new Triangulo(verticesTriangulo3);

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t11.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t15 = new Triangulo(verticesTriangulo3);

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t15.moveVertice(i, translacao);

    //Criando os vértices do Triângulo
    translacao[0][0] = 600;
    translacao[1][0] = 120;
    Vertice[] verticesTriangulo4 = new Vertice[3];
    verticesTriangulo4[0] = new Vertice(verticesTriangulo3[0].getX() + (verticesTriangulo3[1].getX() - verticesTriangulo3[0].getX()), verticesTriangulo3[1].getY() - (verticesTriangulo3[1].getY() - verticesTriangulo3[2].getY()));
    verticesTriangulo4[1] = new Vertice(60, 0);
    verticesTriangulo4[2] = new Vertice(0, -60);

    Triangulo t4 = new Triangulo(verticesTriangulo4);
    for (int i = 0; i < verticesTriangulo4.length; i++)
      t4.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t8 = new Triangulo(verticesTriangulo4);

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t8.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t12 = new Triangulo(verticesTriangulo4);

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t12.moveVertice(i, translacao);

    translacao[1][0] += 200;

    Triangulo t16 = new Triangulo(verticesTriangulo4);

    for (int i = 0; i < verticesTriangulo4.length; i++)
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

    float[][] translacao = {{130},{60}};

    //Criando os vértices do Triângulo do Topo (Direita)
    Vertice[] verticesTrianguloTopoDireita = new Vertice[3];
    verticesTrianguloTopoDireita[0] = new Vertice(0, 0);
    verticesTrianguloTopoDireita[1] = new Vertice(30, 0);
    verticesTrianguloTopoDireita[2] = new Vertice(0, -60);
    
    translacao[1][0] += 800;
    Triangulo t1 = new Triangulo(verticesTrianguloTopoDireita);

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t1.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t5 = new Triangulo(verticesTrianguloTopoDireita);

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t5.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t9 = new Triangulo(verticesTrianguloTopoDireita);

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t9.moveVertice(i, translacao);

    translacao[0][0] += 350;

    Triangulo t13 = new Triangulo(verticesTrianguloTopoDireita);

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t13.moveVertice(i, translacao);

    //Criando os vértices do Triângulo do Topo (Esquerda)
    translacao[0][0] = 130;
    translacao[1][0] = 60;
    Vertice[] verticesTrianguloTopoEsquerda = new Vertice[3];
    verticesTrianguloTopoEsquerda[0] = new Vertice(0, 0);
    verticesTrianguloTopoEsquerda[1] = new Vertice(verticesTrianguloTopoDireita[1].getX() - 2*(verticesTrianguloTopoDireita[1].getX() - verticesTrianguloTopoDireita[0].getX()), 0); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTrianguloTopoEsquerda[2] = new Vertice(0, -60);

    translacao[1][0] += 800;

    Triangulo t2 = new Triangulo(verticesTrianguloTopoEsquerda);

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t2.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t6 = new Triangulo(verticesTrianguloTopoEsquerda);

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t6.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t10 = new Triangulo(verticesTrianguloTopoEsquerda);

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t10.moveVertice(i, translacao);

    translacao[0][0] += 350;

    Triangulo t14 = new Triangulo(verticesTrianguloTopoEsquerda);

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t14.moveVertice(i, translacao);

    //Criando os vértices do Triângulo da Base (Esquerda)
    translacao[0][0] = 100;
    translacao[1][0] = 920;
    Vertice[] verticesTrianguloBaseEsquerda = new Vertice[3];
    verticesTrianguloBaseEsquerda[0] = new Vertice(0, 0);
    verticesTrianguloBaseEsquerda[1] = new Vertice(60, 0);
    verticesTrianguloBaseEsquerda[2] = new Vertice(0, -60);

    Triangulo t3 = new Triangulo(verticesTrianguloBaseEsquerda);

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t3.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t7 = new Triangulo(verticesTrianguloBaseEsquerda);

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t7.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t11 = new Triangulo(verticesTrianguloBaseEsquerda);

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t11.moveVertice(i, translacao);

    translacao[0][0] += 350;

    Triangulo t15 = new Triangulo(verticesTrianguloBaseEsquerda);

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t15.moveVertice(i, translacao);

    //Criando os vértices do Triângulo da Base (Direita)
    translacao[0][0] = 100;
    translacao[1][0] = 920;
    Vertice[] verticesTrianguloBaseDireita = new Vertice[3];
    verticesTrianguloBaseDireita[0] = new Vertice(verticesTrianguloBaseEsquerda[0].getX() + (verticesTrianguloBaseEsquerda[1].getX() - verticesTrianguloBaseEsquerda[0].getX()), verticesTrianguloBaseEsquerda[1].getY() - (verticesTrianguloBaseEsquerda[1].getY() - verticesTrianguloBaseEsquerda[2].getY()));
    verticesTrianguloBaseDireita[1] = new Vertice(60, 0);
    verticesTrianguloBaseDireita[2] = new Vertice(0, -60);

    Triangulo t4 = new Triangulo(verticesTrianguloBaseDireita);

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t4.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t8 = new Triangulo(verticesTrianguloBaseDireita);

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t8.moveVertice(i, translacao);

    translacao[0][0] += 300;

    Triangulo t12 = new Triangulo(verticesTrianguloBaseDireita);

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t12.moveVertice(i, translacao);

    translacao[0][0] += 350;

    Triangulo t16 = new Triangulo(verticesTrianguloBaseDireita);

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
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
