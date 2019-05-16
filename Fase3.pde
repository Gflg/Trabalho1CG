public class Fase3 extends Tela {

  //Array de rotação
  float[][] rotacao = new float[3][3];

  private void setRotacao(float angulo){
    rotacao[0][0] = cos(angulo);
    rotacao[0][1] = -sin(angulo);
    rotacao[1][0] = sin(angulo);
    rotacao[1][1] = cos(angulo);
    rotacao[2][0] = 0;
    rotacao[2][1] = 0;
  }

  public Fase3() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }

  private void drawRetangulos() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0, 0);
    verticesRetangulo[1] = new Vertice(50, 0, 0);
    verticesRetangulo[2] = new Vertice(0, 100, 0);
    verticesRetangulo[3] = new Vertice(50, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 750;
    translacao[0][1] = 0;
    translacao[1][0] = 0;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    setRotacao(PI/4);

    stroke(0);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q1.transformaVertice(i, rotacao);
      q1.moveVertice(i, translacao);
    }

    q1.drawFigura();

    fill(0);

    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2, (1.5 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 20);

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 50;
    translacao[1][0] += 280;

    setRotacao(3*PI/4);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q2.transformaVertice(i, rotacao);
      q2.moveVertice(i, translacao);
    }

    q2.drawFigura();

    fill(0);

    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2.8 - 50, (4 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 20);

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] -= 75;
    translacao[1][0] += 240;

    setRotacao(5*PI/4);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }

    q3.drawFigura();

    fill(0);

    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2.5 + 25, (6.5 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Retângulo 1
    Vertice[] verticesRetangulo1 = new Vertice[4];
    verticesRetangulo1[0] = new Vertice(0, 0, 0);
    verticesRetangulo1[1] = new Vertice(50, 0, 0);
    verticesRetangulo1[2] = new Vertice(0, 100, 0);
    verticesRetangulo1[3] = new Vertice(50, 100, 0);

    //Criando os vértices do Retângulo 2
    Vertice[] verticesRetangulo2 = new Vertice[4];
    verticesRetangulo2[0] = new Vertice(0, 0, 0);
    verticesRetangulo2[1] = new Vertice(100, 0, 0);
    verticesRetangulo2[2] = new Vertice(0, 50, 0);
    verticesRetangulo2[3] = new Vertice(100, 50, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo1);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 800;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesRetangulo1.length; i++)
      q1.moveVertice(i, translacao);

    q1.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo2);

    translacao[0][0] = 375;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesRetangulo2.length; i++)
      q2.moveVertice(i, translacao);

    q2.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo1);

    translacao[0][0] += 375;
    translacao[1][0] -= 25;

    setRotacao(PI/4);

    for (int i = 0; i < verticesRetangulo1.length; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }

    q3.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo1);

    translacao[0][0] += 250;
    translacao[1][0] += 35;

    setRotacao(7*(PI/4));

    for (int i = 0; i < verticesRetangulo1.length; i++){
      q4.transformaVertice(i, rotacao);
      q4.moveVertice(i, translacao);
    }

    q4.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
