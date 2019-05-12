public class Fase1 extends Tela {

  public Fase1() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawTriangulo();
    drawRetangulo();
    drawLosango();
    drawRespostas();
  }

  private void drawTriangulo() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de escala
    float[][] escala = new float[3][3];

    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(200, 0, 0);
    verticesTriangulo[1] = new Vertice(300, 0, 0);
    verticesTriangulo[2] = new Vertice(250, -100, 0);

    Triangulo t1 = new Triangulo(verticesTriangulo);

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    translacao[0][0] = 200;
    translacao[0][1] = 0;
    translacao[1][0] = 200;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }

    t1.drawFigura();

    fill(0, 0, 0); //As próximas coisas criadas serão pintadas de preto

    textSize(40); //Fonte do texto
    text("→", verticesTriangulo[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesTriangulo[1].getY() + verticesTriangulo[2].getY()) / 2); //Posição inicial do texto x e y

    stroke(0, 0, 255); //As próximas coisas criadas serão pintadas de azul

    Triangulo t2 = new Triangulo(verticesTriangulo);

    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo

    translacao[0][0] += 350;

    escala[0][0] = 1;
    escala[0][1] = 0;
    escala[1][0] = 0;
    escala[1][1] = 0.7;
    escala[2][0] = 0;
    escala[2][1] = 0;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i == 2)
        t2.transformaVertice(i, escala);
    }

    t2.drawFigura();

  }

  private void drawRetangulo() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de escala
    float[][] escala = new float[3][3];

    //Criando os vértices do Retângulo
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero[1] = new Vertice(100, 0, 0);
    verticesQuadrilatero[2] = new Vertice(0, 100, 0);
    verticesQuadrilatero[3] = new Vertice(100, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    stroke(0, 180, 0); //As próximas coisas serão pintadas de verde

    translacao[0][0] = 400;
    translacao[0][1] = 0;
    translacao[1][0] = 350;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }

    q1.drawFigura();

    fill(0, 0, 0);

    textSize(40); //Fonte do texto
    text("→", verticesQuadrilatero[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    stroke(255, 0, 0); //As próximas coisas criadas serão pintadas de vermelho

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado

    translacao[0][0] += 350;

    escala[0][0] = 1;
    escala[0][1] = 0;
    escala[1][0] = 0;
    escala[1][1] = 0.75;
    escala[2][0] = 0;
    escala[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
      if (i < 2)
        q2.transformaVertice(i, escala);
    }

    q2.drawFigura();

  }

  private void drawLosango() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Losango
    Vertice[] verticesQuadrilatero2 = new Vertice[4];
    verticesQuadrilatero2[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero2[1] = new Vertice(100, 0, 0);
    verticesQuadrilatero2[2] = new Vertice(-50, 150, 0);
    verticesQuadrilatero2[3] = new Vertice(150, 150, 0);

    Quadrilatero l1 = new Quadrilatero(verticesQuadrilatero2);

    stroke(0, 0, 255); //As próximas coisas serão pintadas de azul

    translacao[0][0] = 400;
    translacao[0][1] = 0;
    translacao[1][0] = 550;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero2.length; i++){
      l1.moveVertice(i, translacao);
    }

    l1.drawFigura();

    fill(0, 0, 0);

    textSize(40); //Fonte do texto
    text("→", verticesQuadrilatero2[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesQuadrilatero2[1].getY() + verticesQuadrilatero2[2].getY() ) / 2); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de escala (Certa)
    float[][] escalaCerta = new float[3][3];

    //Array de escala (Errada)
    float[][] escalaErrada = new float[3][3];

    //Array de escala (Errada2)
    float[][] escalaErrada2 = new float[3][3];

    //Criando os vértices do Losango
    Vertice[] verticesQuadrilatero3 = new Vertice[4];
    verticesQuadrilatero3[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero3[1] = new Vertice(100, 0, 0);
    verticesQuadrilatero3[2] = new Vertice(-50, 100, 0);
    verticesQuadrilatero3[3] = new Vertice(150, 100, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Quadrilatero l1 = new Quadrilatero(verticesQuadrilatero3);

    stroke(255, 0, 0); //As próximas coisas serão pintadas de vermelho

    translacao[0][0] = 80;
    translacao[0][1] = 0;
    translacao[1][0] = 840;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l1.moveVertice(i, translacao);
    }

    l1.drawFigura();

    stroke(0, 180, 0); //As próximas coisas serão pintadas de verde

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Quadrilatero l2 = new Quadrilatero(verticesQuadrilatero3);

    translacao[0][0] += 300;

    escalaCerta[0][0] = 1;
    escalaCerta[0][1] = 0;
    escalaCerta[1][0] = 0;
    escalaCerta[1][1] = 0.9;
    escalaCerta[2][0] = 0;
    escalaCerta[2][1] = 0;

    escalaErrada[0][0] = 0.9;
    escalaErrada[0][1] = 0;
    escalaErrada[1][0] = 0;
    escalaErrada[1][1] = 1;
    escalaErrada[2][0] = 0;
    escalaErrada[2][1] = 0;

    escalaErrada2[0][0] = 1.1;
    escalaErrada2[0][1] = 0;
    escalaErrada2[1][0] = 0;
    escalaErrada2[1][1] = 1;
    escalaErrada2[2][0] = 0;
    escalaErrada2[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l2.moveVertice(i, translacao);
      if(i<2)
        l2.transformaVertice(i, escalaCerta);
      else if(i == 2)
        l2.transformaVertice(i, escalaErrada);
      else
        l2.transformaVertice(i, escalaErrada2);
    }

    l2.drawFigura();

    stroke(0, 180, 0); //As próximas coisas serão pintadas de verde

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Quadrilatero l3 = new Quadrilatero(verticesQuadrilatero3);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l3.moveVertice(i, translacao);
      if (i<2)
        l3.transformaVertice(i, escalaCerta);
    }

    l3.drawFigura();

    stroke(0, 0, 255); //As próximas coisas serão pintadas de azul

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Quadrilatero l4 = new Quadrilatero(verticesQuadrilatero3);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l4.moveVertice(i, translacao);
      if(i==2)
        l4.transformaVertice(i, escalaErrada);
      else if(i == 3)
        l4.transformaVertice(i, escalaErrada2);
    }

    l4.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
