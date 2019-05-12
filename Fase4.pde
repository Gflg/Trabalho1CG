public class Fase4 extends Tela {

  public Fase4() {
    super(1); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawSetas();
    drawTriangulos();
    drawRespostas();
  }

  private void drawSetas() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Pentágono
    Vertice[] verticesPentagono = new Vertice[5];
    verticesPentagono[0] = new Vertice(0, 60, 0);
    verticesPentagono[1] = new Vertice(0, 0, 0);
    verticesPentagono[2] = new Vertice(60, 60, 0);
    verticesPentagono[3] = new Vertice(60, 0, 0);
    verticesPentagono[4] = new Vertice(30, -60, 0);

    translacao[0][0] = 600;
    translacao[0][1] = 0;
    translacao[1][0] = 60;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    fill(0);

    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (1.5 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (3.15 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("↓",translacao[0][0] + verticesPentagono[0].getX() + (verticesPentagono[3].getX() - verticesPentagono[0].getX())/3, (4.8 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

    text("→",translacao[0][0] + verticesPentagono[0].getX() + 125, (5.7 * (verticesPentagono[2].getY() - verticesPentagono[4].getY())));

  }

  private void drawTriangulos() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Triângulo 1
    Vertice[] verticesTriangulo1 = new Vertice[3];
    verticesTriangulo1[0] = new Vertice(0, 0, 0);
    verticesTriangulo1[1] = new Vertice(30, 0, 0);
    verticesTriangulo1[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo 2
    Vertice[] verticesTriangulo2 = new Vertice[3];
    verticesTriangulo2[0] = new Vertice(0, 0, 0);
    verticesTriangulo2[1] = new Vertice(verticesTriangulo1[1].getX() - 2 * (verticesTriangulo1[1].getX() - verticesTriangulo1[0].getX()), 0, 0); //Aplicando a reflexão no eixo X, mantendo os eixos Y e Z intactos
    verticesTriangulo2[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo 3
    Vertice[] verticesTriangulo3 = new Vertice[3];
    verticesTriangulo3[0] = new Vertice(0, 0, 0);
    verticesTriangulo3[1] = new Vertice(60, 0, 0);
    verticesTriangulo3[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo 4
    Vertice[] verticesTriangulo4 = new Vertice[3];
    verticesTriangulo4[0] = new Vertice(verticesTriangulo3[0].getX() + (verticesTriangulo3[1].getX() - verticesTriangulo3[0].getX()), verticesTriangulo3[1].getY() - (verticesTriangulo3[1].getY() - verticesTriangulo3[2].getY()), 0);
    verticesTriangulo4[1] = new Vertice(60, 0, 0);
    verticesTriangulo4[2] = new Vertice(0, -60, 0);

    Triangulo t1 = new Triangulo(verticesTriangulo1);

    translacao[0][0] = 630;
    translacao[0][1] = 0;
    translacao[1][0] = 60;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesTriangulo1.length; i++)
      t1.moveVertice(i, translacao);

    Triangulo t5 = new Triangulo(verticesTriangulo1);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo1.length; i++)
      t5.moveVertice(i, translacao);

    Triangulo t9 = new Triangulo(verticesTriangulo1);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo1.length; i++)
      t9.moveVertice(i, translacao);

    Triangulo t13 = new Triangulo(verticesTriangulo1);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo1.length; i++)
      t13.moveVertice(i, translacao);

    Triangulo t2 = new Triangulo(verticesTriangulo2);

    translacao[0][0] = 630;
    translacao[1][0] = 60;

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t2.moveVertice(i, translacao);

    Triangulo t6 = new Triangulo(verticesTriangulo2);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t6.moveVertice(i, translacao);

    Triangulo t10 = new Triangulo(verticesTriangulo2);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t10.moveVertice(i, translacao);

    Triangulo t14 = new Triangulo(verticesTriangulo2);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo2.length; i++)
      t14.moveVertice(i, translacao);

    Triangulo t3 = new Triangulo(verticesTriangulo3);

    translacao[0][0] = 600;
    translacao[1][0] = 120;

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t3.moveVertice(i, translacao);

    Triangulo t7 = new Triangulo(verticesTriangulo3);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t7.moveVertice(i, translacao);

    Triangulo t11 = new Triangulo(verticesTriangulo3);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t11.moveVertice(i, translacao);

    Triangulo t15 = new Triangulo(verticesTriangulo3);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo3.length; i++)
      t15.moveVertice(i, translacao);

    Triangulo t4 = new Triangulo(verticesTriangulo4);

    translacao[0][0] = 600;
    translacao[1][0] = 120;

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t4.moveVertice(i, translacao);

    Triangulo t8 = new Triangulo(verticesTriangulo4);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t8.moveVertice(i, translacao);

    Triangulo t12 = new Triangulo(verticesTriangulo4);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t12.moveVertice(i, translacao);

    Triangulo t16 = new Triangulo(verticesTriangulo4);

    translacao[1][0] += 200;

    for (int i = 0; i < verticesTriangulo4.length; i++)
      t16.moveVertice(i, translacao);

  /* <---- INICIO DO DESENHO DA IMAGEM 1 ----> */

    stroke(0);

    t2.drawFigura();

    t3.drawFigura();

    t4.drawFigura();

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    t1.drawFigura();

  /* <---- FIM DO DESENHO DA IMAGEM 1 ----> */

  /* <---- INICIO DO DESENHO DA IMAGEM 2 ----> */

    stroke(0);

    t5.drawFigura();

    t6.drawFigura();

    t7.drawFigura();

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    t8.drawFigura();

  /* <---- FIM DO DESENHO DA IMAGEM 2 ----> */

  /* <---- INICIO DO DESENHO DA IMAGEM 3 ----> */

    stroke(0);

    t9.drawFigura();

    t11.drawFigura();

    t12.drawFigura();

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    t10.drawFigura();

  /* <---- FIM DO DESENHO DA IMAGEM 3 ----> */

  /* <---- INICIO DO DESENHO DA IMAGEM 4 ----> */

    stroke(0);

    t13.drawFigura();

    t14.drawFigura();

    t15.drawFigura();

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    t16.drawFigura();

  /* <---- FIM DO DESENHO DA IMAGEM 4 ----> */

    stroke(0);

    }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Triângulo do Topo (Direita)
    Vertice[] verticesTrianguloTopoDireita = new Vertice[3];
    verticesTrianguloTopoDireita[0] = new Vertice(0, 0, 0);
    verticesTrianguloTopoDireita[1] = new Vertice(30, 0, 0);
    verticesTrianguloTopoDireita[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo do Topo (Esquerda)
    Vertice[] verticesTrianguloTopoEsquerda = new Vertice[3];
    verticesTrianguloTopoEsquerda[0] = new Vertice(0, 0, 0);
    verticesTrianguloTopoEsquerda[1] = new Vertice(verticesTrianguloTopoDireita[1].getX() - 2*(verticesTrianguloTopoDireita[1].getX() - verticesTrianguloTopoDireita[0].getX()), 0, 0); //Aplicando a reflexão no eixo X, mantendo os eixos Y e Z intactos
    verticesTrianguloTopoEsquerda[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo da Base (Esquerda)
    Vertice[] verticesTrianguloBaseEsquerda = new Vertice[3];
    verticesTrianguloBaseEsquerda[0] = new Vertice(0, 0, 0);
    verticesTrianguloBaseEsquerda[1] = new Vertice(60, 0, 0);
    verticesTrianguloBaseEsquerda[2] = new Vertice(0, -60, 0);

    //Criando os vértices do Triângulo da Base (Direita)
    Vertice[] verticesTrianguloBaseDireita = new Vertice[3];
    verticesTrianguloBaseDireita[0] = new Vertice(verticesTrianguloBaseEsquerda[0].getX() + (verticesTrianguloBaseEsquerda[1].getX() - verticesTrianguloBaseEsquerda[0].getX()), verticesTrianguloBaseEsquerda[1].getY() - (verticesTrianguloBaseEsquerda[1].getY() - verticesTrianguloBaseEsquerda[2].getY()), 0);
    verticesTrianguloBaseDireita[1] = new Vertice(60, 0, 0);
    verticesTrianguloBaseDireita[2] = new Vertice(0, -60, 0);

    Triangulo t1 = new Triangulo(verticesTrianguloTopoDireita);

    translacao[0][0] = 130;
    translacao[0][1] = 0;
    translacao[1][0] = 860;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t1.moveVertice(i, translacao);

    Triangulo t5 = new Triangulo(verticesTrianguloTopoDireita);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t5.moveVertice(i, translacao);

    Triangulo t9 = new Triangulo(verticesTrianguloTopoDireita);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t9.moveVertice(i, translacao);

    Triangulo t13 = new Triangulo(verticesTrianguloTopoDireita);

    translacao[0][0] += 350;

    for (int i = 0; i < verticesTrianguloTopoDireita.length; i++)
      t13.moveVertice(i, translacao);

    Triangulo t2 = new Triangulo(verticesTrianguloTopoEsquerda);

    translacao[0][0] = 130;
    translacao[1][0] = 860;

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t2.moveVertice(i, translacao);

    Triangulo t6 = new Triangulo(verticesTrianguloTopoEsquerda);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t6.moveVertice(i, translacao);

    Triangulo t10 = new Triangulo(verticesTrianguloTopoEsquerda);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t10.moveVertice(i, translacao);

    Triangulo t14 = new Triangulo(verticesTrianguloTopoEsquerda);

    translacao[0][0] += 350;

    for (int i = 0; i < verticesTrianguloTopoEsquerda.length; i++)
      t14.moveVertice(i, translacao);

    Triangulo t3 = new Triangulo(verticesTrianguloBaseEsquerda);

    translacao[0][0] = 100;
    translacao[1][0] = 920;

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t3.moveVertice(i, translacao);

    Triangulo t7 = new Triangulo(verticesTrianguloBaseEsquerda);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t7.moveVertice(i, translacao);

    Triangulo t11 = new Triangulo(verticesTrianguloBaseEsquerda);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t11.moveVertice(i, translacao);

    Triangulo t15 = new Triangulo(verticesTrianguloBaseEsquerda);

    translacao[0][0] += 350;

    for (int i = 0; i < verticesTrianguloBaseEsquerda.length; i++)
      t15.moveVertice(i, translacao);

    Triangulo t4 = new Triangulo(verticesTrianguloBaseDireita);

    translacao[0][0] = 100;
    translacao[1][0] = 920;

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t4.moveVertice(i, translacao);

    Triangulo t8 = new Triangulo(verticesTrianguloBaseDireita);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t8.moveVertice(i, translacao);

    Triangulo t12 = new Triangulo(verticesTrianguloBaseDireita);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t12.moveVertice(i, translacao);

    Triangulo t16 = new Triangulo(verticesTrianguloBaseDireita);

    translacao[0][0] += 350;

    for (int i = 0; i < verticesTrianguloBaseDireita.length; i++)
      t16.moveVertice(i, translacao);

  /* <---- INICIO DO DESENHO DA RESPOSTA 1 ----> */

    t1.drawFigura();

    t2.drawFigura();

    t3.drawFigura();

    stroke(255, 0, 0);

    t4.drawFigura();

    stroke(0);

  /* <---- FIM DO DESENHO DA RESPOSTA 1 ----> */

  /* <---- INICIO DO DESENHO DA RESPOSTA 2 ----> */

    t5.drawFigura();

    stroke(255, 0, 0);

    t6.drawFigura();

    stroke(0);

    t7.drawFigura();

    t8.drawFigura();

  /* <---- FIM DO DESENHO DA RESPOSTA 2 ----> */

  /* <---- INICIO DO DESENHO DA RESPOSTA 3 ----> */

    stroke(255, 0, 0);

    t9.drawFigura();

    stroke(0);

    t10.drawFigura();

    t11.drawFigura();

    t12.drawFigura();

  /* <---- FIM DO DESENHO DA RESPOSTA 3 ----> */

  /* <---- INICIO DO DESENHO DA RESPOSTA 4 ----> */

    t13.drawFigura();

    t14.drawFigura();

    stroke(255, 0, 0);

    t15.drawFigura();

    stroke(0);

    t16.drawFigura();

  /* <---- FIM DO DESENHO DA RESPOSTA 4 ----> */

  }

}
