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
    Vertice[] verticesPentagono = new Vertice[5];
    verticesPentagono[0] = new Vertice(600, 120);
    verticesPentagono[1] = new Vertice(600, 60);
    verticesPentagono[2] = new Vertice(660, 120);
    verticesPentagono[3] = new Vertice(660, 60);
    verticesPentagono[4] = new Vertice(630, 0);

    fill(0);
    text("↓", verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (1.5 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓", verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (3.15 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓", verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (4.8 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("→", verticesPentagono[0].getX() + 125, (5.7 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

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
    Vertice[] verticesTriangulo2 = new Vertice[3];
    verticesTriangulo2[0] = new Vertice(630, 60);
    verticesTriangulo2[1] = new Vertice(verticesTriangulo[1].getX() - 2 * (verticesTriangulo[1].getX() - verticesTriangulo[0].getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTriangulo2[2] = new Vertice(630, 0);

    Triangulo t2 = new Triangulo(verticesTriangulo2);

    translacao[1][0] = 200;

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
    Vertice[] verticesTriangulo3 = new Vertice[3];
    verticesTriangulo3[0] = new Vertice(600, 120);
    verticesTriangulo3[1] = new Vertice(660, 120);
    verticesTriangulo3[2] = new Vertice(600, 60);

    Triangulo t3 = new Triangulo(verticesTriangulo3);

    translacao[1][0] = 200;

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
    Vertice[] verticesTriangulo4 = new Vertice[3];
    verticesTriangulo4[0] = new Vertice(verticesTriangulo3[0].getX() + (verticesTriangulo3[1].getX() - verticesTriangulo3[0].getX()), verticesTriangulo3[1].getY() - (verticesTriangulo3[1].getY() - verticesTriangulo3[2].getY()));
    verticesTriangulo4[1] = new Vertice(660, 120);
    verticesTriangulo4[2] = new Vertice(600, 60);

    Triangulo t4 = new Triangulo(verticesTriangulo4);

    translacao[1][0] = 200;

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

    float[][] translacao = {{-500},{800}};

    //Criando os vértices do Triângulo do Topo (Direita)
    Vertice[] verticesTrianguloTopoDireita = new Vertice[3];
    verticesTrianguloTopoDireita[0] = new Vertice(630, 60);
    verticesTrianguloTopoDireita[1] = new Vertice(660, 60);
    verticesTrianguloTopoDireita[2] = new Vertice(630, 0);

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
    Vertice[] verticesTrianguloTopoEsquerda = new Vertice[3];
    verticesTrianguloTopoEsquerda[0] = new Vertice(630, 60);
    verticesTrianguloTopoEsquerda[1] = new Vertice(verticesTrianguloTopoDireita[1].getX() - 2*(verticesTrianguloTopoDireita[1].getX() - verticesTrianguloTopoDireita[0].getX()), 60); //Aplicando a reflexão no eixo X, mantendo o eixo Y intacto
    verticesTrianguloTopoEsquerda[2] = new Vertice(630, 0);

    translacao[0][0] = -500;

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
    Vertice[] verticesTrianguloBaseEsquerda = new Vertice[3];
    verticesTrianguloBaseEsquerda[0] = new Vertice(600, 120);
    verticesTrianguloBaseEsquerda[1] = new Vertice(660, 120);
    verticesTrianguloBaseEsquerda[2] = new Vertice(600, 60);

    translacao[0][0] = -500;

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
    Vertice[] verticesTrianguloBaseDireita = new Vertice[3];
    verticesTrianguloBaseDireita[0] = new Vertice(verticesTrianguloBaseEsquerda[0].getX() + (verticesTrianguloBaseEsquerda[1].getX() - verticesTrianguloBaseEsquerda[0].getX()), verticesTrianguloBaseEsquerda[1].getY() - (verticesTrianguloBaseEsquerda[1].getY() - verticesTrianguloBaseEsquerda[2].getY()));
    verticesTrianguloBaseDireita[1] = new Vertice(660, 120);
    verticesTrianguloBaseDireita[2] = new Vertice(600, 60);

    translacao[0][0] = -500;

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
