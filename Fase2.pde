public class Fase2 extends Tela {

  public Fase2() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }

  private void drawRetangulos() {
    float[][] translacao = {{550},{0}};
    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0);
    verticesRetangulo[1] = new Vertice(100, 0);
    verticesRetangulo[2] = new Vertice(0, 100);
    verticesRetangulo[3] = new Vertice(100, 100);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    stroke(0);

    //Draw do retângulo com os vértices
    for (int i = 0; i < verticesRetangulo.length; i++)
      q1.moveVertice(i, translacao);
    q1.drawFigura();
    
    fill(0);
    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, verticesRetangulo[3].getY() - verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    fill(255,192,203);
    textSize(40);
    text("P", verticesRetangulo[0].getX() + 35 + translacao[0][0], translacao[1][0] + verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y
    text("7", translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, translacao[1][0] + verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    translacao[0][0] += 100;

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q2.drawFigura();

    //Segunda linha de retângulos
    translacao[0][0] = 650;
    translacao[1][0] = 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q3.drawFigura();

    translacao[0][0] = 550;

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q4.drawFigura();

    fill(255,0,0);
    text("R",translacao[0][0] + verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("5",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    
    fill(0);
    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    //Terceira linha vazia
    textSize(40);
    text("↓",translacao[0][0] + verticesRetangulo[0].getX() + 90, 4 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    //Quarta linha
    translacao[0][0] = 650;
    translacao[1][0] = 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q5.drawFigura();

    translacao[0][0] = 550;

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q6.drawFigura();

    fill(139,0,255);
    text("V",translacao[0][0] + verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("1",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    float[][] translacao = {{60},{800}};

    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0);
    verticesRetangulo[1] = new Vertice(80, 0);
    verticesRetangulo[2] = new Vertice(0, 100);
    verticesRetangulo[3] = new Vertice(80, 100);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    int translacaoX = 300;

    // <!-- Resposta 1
    //Draw do retângulo 1 da resposta 1 com os vértices
    for (int i = 0; i < verticesRetangulo.length; i++)
      q1.moveVertice(i, translacao);
    q1.drawFigura();
    
    fill(74, 132, 232);
    textSize(40);
    text("S",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("2",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    translacao[0][0] += 80;

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 1 com os vértices
    q2.drawFigura();

    // -->

    // <!-- Resposta 2
    translacao[0][0] += 220;

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 2 com os vértices
    q3.drawFigura();
    
    fill(48,213,200);
    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("4",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    translacao[0][0] += 80;

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 2 com os vértices
    q4.drawFigura();

    // -->

    // <!-- Resposta 3
    translacao[0][0] += 220;

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 3 com os vértices
    q5.drawFigura();

    fill(255, 255, 0);
    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("3",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    
    translacao[0][0] += 80;

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 3 com os vértices
    q6.drawFigura();

    // -->

    // <!-- Resposta 4
    translacao[0][0] += 220;

    Quadrilatero q7 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q7.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 4 com os vértices
    q7.drawFigura();
    
    fill(48,213,200);
    textSize(40);
    text("T",translacao[0][0] + verticesRetangulo[0].getX() + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);
    text("3",translacao[0][0] + verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30,translacao[1][0] + verticesRetangulo[1].getY() + 60);

    translacao[0][0] += 80;

    Quadrilatero q8 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q8.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 4 com os vértices
    q8.drawFigura();

    //-->

  }

}
