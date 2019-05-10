public class Fase3 extends Tela {

  float[][] rotacao = new float[3][3];

  public Fase3() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }

  public void setRotacao(float angulo){
    rotacao[0][0] = cos(angulo);
    rotacao[0][1] = -sin(angulo);
    rotacao[1][0] = sin(angulo);
    rotacao[1][1] = cos(angulo);
    rotacao[2][0] = 0;
    rotacao[2][1] = 0;
  }

  private void drawRetangulos() {
    float[][] translacao = {{550}, {0}, {0}};
    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0, 0);
    verticesRetangulo[1] = new Vertice(50, 0, 0);
    verticesRetangulo[2] = new Vertice(0, 100, 0);
    verticesRetangulo[3] = new Vertice(50, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);

    translacao[0][0] += 200;

    setRotacao(PI/4);

    stroke(0);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q1.transformaVertice(i, rotacao);
      q1.moveVertice(i, translacao);
    }

    //Draw do retângulo com os vértices
    q1.drawFigura();

    fill(0);
    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2, (1.5 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);

    translacao[0][0] += 50;
    translacao[1][0] += 300;

    setRotacao(3*(PI/4));

    Quadrilatero q2 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q2.transformaVertice(i, rotacao);
      q2.moveVertice(i, translacao);
    }

    //Draw do retângulo com os vértices
    q2.drawFigura();

    fill(0);
    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2.8 - 50, (4 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);

    translacao[0][0] -= 75;
    translacao[1][0] += 200;

    setRotacao(5*(PI/4));

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }

    //Draw do retângulo com os vértices
    q3.drawFigura();

    fill(0);
    text("↓", translacao[0][0] - (verticesRetangulo[3].getX() - verticesRetangulo[0].getX())/2.5 + 25, (6.5 * (verticesRetangulo[3].getY() - verticesRetangulo[1].getY())) - 50);
    
  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{100}, {800}, {0}};
    //Criando os vértices do Retângulo
    Vertice[] verticesRetangulo = new Vertice[4];
    verticesRetangulo[0] = new Vertice(0, 0, 0);
    verticesRetangulo[1] = new Vertice(50, 0, 0);
    verticesRetangulo[2] = new Vertice(0, 100, 0);
    verticesRetangulo[3] = new Vertice(50, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesRetangulo);
    
    // <!-- Resposta 1
    //Draw do retângulo com os vértices
    for (int i = 0; i < verticesRetangulo.length; i++)
      q1.moveVertice(i, translacao);
    q1.drawFigura();
    // -->

    // <!-- Resposta 2
    translacao[0][0] = 0;
    translacao[1][0] = 0;
    
    Vertice[] verticesRetangulo2 = new Vertice[4];
    verticesRetangulo2[0] = new Vertice(0, 0, 0);
    verticesRetangulo2[1] = new Vertice(100, 0, 0);
    verticesRetangulo2[2] = new Vertice(0, 50, 0);
    verticesRetangulo2[3] = new Vertice(100, 50, 0);
    
    translacao[0][0] += 375;
    translacao[1][0] += 825;
    Quadrilatero q2 = new Quadrilatero(verticesRetangulo2);

    for (int i = 0; i < verticesRetangulo2.length; i++)
      q2.moveVertice(i, translacao);

    //Draw do retângulo com os vértices
    q2.drawFigura();
    // -->

    // <!-- Resposta 3
    translacao[0][0] += 375;

    setRotacao(PI/4);

    Quadrilatero q3 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q3.transformaVertice(i, rotacao);
      q3.moveVertice(i, translacao);
    }

    //Draw do retângulo com os vértices
    q3.drawFigura();
    // -->

    // <!-- Resposta 4
    translacao[0][0] += 250;
    translacao[1][0] += 25;

    setRotacao(7*(PI/4));

    Quadrilatero q4 = new Quadrilatero(verticesRetangulo);

    for (int i = 0; i < verticesRetangulo.length; i++){
      q4.transformaVertice(i, rotacao);
      q4.moveVertice(i, translacao);
    }

    //Draw do retângulo com os vértices
    q4.drawFigura();
    //-->

  }

}
