 public class Fase2 extends Tela {

  public Fase2() {
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
    verticesRetangulo[1] = new Vertice(100, 0, 0);
    verticesRetangulo[2] = new Vertice(0, 100, 0);
    verticesRetangulo[3] = new Vertice(100, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 550;
    translacao[0][1] = 0;
    translacao[1][0] = 0;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    stroke(0);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q1.moveVertice(i, translacao);

    q1.drawFigura();

    fill(0);

    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, verticesRetangulo[3].getY() - verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    fill(255, 192, 203);

    textSize(40);
    text("P", verticesRetangulo[0].getX() + 35 + translacao[0][0], translacao[1][0] + verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y
    text("7", translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, translacao[1][0] + verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 100;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    q2.drawFigura();

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 650;
    translacao[1][0] = 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    q3.drawFigura();

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 550;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    q4.drawFigura();

    fill(255, 0, 0);

    text("R",translacao[0][0] + verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("5",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y

    fill(0);

    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    textSize(40);
    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, 4 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 650;
    translacao[1][0] = 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    q5.drawFigura();

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 550;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    q6.drawFigura();

    fill(139, 0, 255);

    text("V",translacao[0][0] + verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("1",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {

    super.drawRespostas();
    //Desenhando área padrão de resposta

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0, 0);
    verticesRetangulo[1] = new Vertice(80, 0, 0);
    verticesRetangulo[2] = new Vertice(0, 100, 0);
    verticesRetangulo[3] = new Vertice(80, 100, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] = 45;
    translacao[0][1] = 0;
    translacao[1][0] = 800;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q1.moveVertice(i, translacao);

    q1.drawFigura();

    fill(74, 132, 232);

    textSize(40);
    text("V",translacao[0][0] + verticesRetangulo[0].getX() + 30, translacao[1][0] + verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y
    text("2",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 80;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    q2.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 235;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    q3.drawFigura();

    fill(48, 213, 200);

    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("4",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 80;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    q4.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 235;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    q5.drawFigura();

    fill(255, 255, 0);

    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("3",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 80;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    q6.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Quadrilatero q7 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 235;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q7.moveVertice(i, translacao);

    q7.drawFigura();

    fill(48, 213, 200);

    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("3",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    Quadrilatero q8 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 80;

    for (int i = 0; i < verticesRetangulo.length; i++)
      q8.moveVertice(i, translacao);

    q8.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */
//super.drawRespostas();
  }

}
