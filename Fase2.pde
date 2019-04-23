public class Fase2 extends Tela {

  public Fase2() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }

  private void drawRetangulos() {
    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(550, 0);
    verticesRetangulo[1] = new Vertice(650, 0);
    verticesRetangulo[2] = new Vertice(550, 100);
    verticesRetangulo[3] = new Vertice(650, 100);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    stroke(0);

    //Draw do retângulo com os vértices
    q1.drawQuadrilatero();

    float[][] translacao = {{100},{0}};

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q2.drawQuadrilatero();

    //Fonte do texto
    fill(255,192,203);
    textSize(40);
    text("P", verticesRetangulo[0].getX() + 35, verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y
    text("7", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    fill(0);
    text("↓", verticesRetangulo[0].getX() + 90, verticesRetangulo[3].getY() - verticesRetangulo[1].getY() + 60); //Posição inicial do texto x e y

    //Segunda linha de retângulos
    translacao[0][0] = 0;
    translacao[1][0] = 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q3.drawQuadrilatero();

    translacao[0][0] = 100;

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q4.drawQuadrilatero();

    fill(255,0,0);
    text("R", verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("5", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    
    fill(0);
    text("↓", verticesRetangulo[0].getX() + 90, 2 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    //Terceira linha vazia
    textSize(40);
    text("↓", verticesRetangulo[0].getX() + 90, 4 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY()) + 160); //Posição inicial do texto x e y

    //Quarta linha
    translacao[0][0] = 0;
    translacao[1][0] = 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY());

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q5.drawQuadrilatero();

    translacao[0][0] = 100;

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q6.drawQuadrilatero();

    fill(139,0,255);
    text("V", verticesRetangulo[0].getX() + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y
    text("1", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 35, (verticesRetangulo[0].getY() + 6 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) + 60); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();

    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(50, 800);
    verticesRetangulo[1] = new Vertice(130, 800);
    verticesRetangulo[2] = new Vertice(50, 900);
    verticesRetangulo[3] = new Vertice(130, 900);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    int translacaoX = 300;

    // <!-- Resposta 1
    //Draw do retângulo 1 da resposta 1 com os vértices
    q1.drawQuadrilatero();

    float[][] translacao = {{80},{0}};

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q2.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 1 com os vértices
    q2.drawQuadrilatero();

    fill(74, 132, 232);
    textSize(40);
    text("S", verticesRetangulo[0].getX() + 30, verticesRetangulo[1].getY() + 60);
    text("2", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30, verticesRetangulo[1].getY() + 60);
    // -->

    // <!-- Resposta 2
    translacao[0][0] += 220;

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q3.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 2 com os vértices
    q3.drawQuadrilatero();

    translacao[0][0] += 80;

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q4.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 2 com os vértices
    q4.drawQuadrilatero();

    fill(48,213,200);
    textSize(40);
    text("T", verticesRetangulo[0].getX() + 30 + translacaoX, verticesRetangulo[1].getY() + 60);
    text("4", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30 + translacaoX, verticesRetangulo[1].getY() + 60);
    // -->

    // <!-- Resposta 3
    translacao[0][0] += 220;

    Quadrilatero q5 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q5.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 3 com os vértices
    q5.drawQuadrilatero();

    translacao[0][0] += 80;

    Quadrilatero q6 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q6.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 3 com os vértices
    q6.drawQuadrilatero();

    fill(255, 255, 0);
    textSize(40);
    text("T", verticesRetangulo[0].getX() + 30 + translacaoX * 2, verticesRetangulo[1].getY() + 60);
    text("3", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30 + translacaoX * 2, verticesRetangulo[1].getY() + 60);
    // -->

    // <!-- Resposta 4
    translacao[0][0] += 220;

    Quadrilatero q7 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q7.moveVertice(i, translacao);

    //Draw do retângulo 1 da resposta 4 com os vértices
    q7.drawQuadrilatero();

    translacao[0][0] += 80;

    Quadrilatero q8 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++)
      q8.moveVertice(i, translacao);

    //Draw do retângulo 2 da resposta 4 com os vértices
    q8.drawQuadrilatero();

    fill(48,213,200);
    textSize(40);
    text("T", verticesRetangulo[0].getX() + 30 + translacaoX * 3, verticesRetangulo[1].getY() + 60);
    text("3", verticesRetangulo[0].getX() + (verticesRetangulo[1].getX() - verticesRetangulo[0].getX()) + 30 + translacaoX * 3, verticesRetangulo[1].getY() + 60);
    //-->

  }

}
