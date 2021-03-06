public class Fase10 extends Tela {

  //Array de cisalhamento eixo X
  float[][] cisalhamentoX = new float[2][2];

  //Array de cisalhamento eixo Y
  float[][] cisalhamentoY = new float[2][2];

  private void setCisalhamentoX(float k){
    cisalhamentoX[0][0] = 1;
    cisalhamentoX[0][1] = k;
    cisalhamentoX[1][0] = 0;
    cisalhamentoX[1][1] = 1;
  }

  private void setCisalhamentoY(float k){
    cisalhamentoY[0][0] = 1;
    cisalhamentoY[0][1] = 0;
    cisalhamentoY[1][0] = k;
    cisalhamentoY[1][1] = 1;
  }

  public Fase10() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
    setCisalhamentoX(0.7);
    setCisalhamentoY(0.7);
  }

  public void drawTela() {
    drawAmpulhetas();
    drawRespostas();
  }

  private void drawAmpulhetas() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices da Ampulheta
    Vertice[] verticesAmpulheta = new Vertice[5];
    verticesAmpulheta[0] = new Vertice(0, 0, 0);
    verticesAmpulheta[1] = new Vertice(-25, -50, 0);
    verticesAmpulheta[2] = new Vertice(25, -50, 0);
    verticesAmpulheta[3] = new Vertice(25, 50, 0);
    verticesAmpulheta[4] = new Vertice(-25, 50, 0);

    Ampulheta a1 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] = 600;
    translacao[0][1] = 0;
    translacao[1][0] = 100;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a1.moveVertice(i, translacao);
    }

    a1.drawFigura();

    //Texto
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));

    Ampulheta a5 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] += 250;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a5.moveVertice(i, translacao);
    }

    a5.drawFigura();

    Ampulheta a2 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] -= 250;
    translacao[1][0] += 250;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a2.transformaVertice(i, cisalhamentoY);
      a2.moveVertice(i, translacao);
    }

    a2.drawFigura();

    //Texto
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));

    Ampulheta a3 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] += 250;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a3.transformaVertice(i, cisalhamentoY);
      a3.transformaVertice(i, cisalhamentoY);
      a3.moveVertice(i, translacao);
    }

    a3.drawFigura();

    Ampulheta a4 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] -= 250;
    translacao[1][0] += 250;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a4.transformaVertice(i, cisalhamentoX);
      a4.moveVertice(i, translacao);
    }

    a4.drawFigura();

    //Texto
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices da Ampulheta
    Vertice[] verticesAmpulheta = new Vertice[5];
    verticesAmpulheta[0] = new Vertice(0, 0, 0);
    verticesAmpulheta[1] = new Vertice(-25, -50, 0);
    verticesAmpulheta[2] = new Vertice(25, -50, 0);
    verticesAmpulheta[3] = new Vertice(25, 50, 0);
    verticesAmpulheta[4] = new Vertice(-25, 50, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Ampulheta a1 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] = displayWidth / 11;
    translacao[0][1] = 0;
    translacao[1][0] = 0.8 * displayHeight;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a1.moveVertice(i, translacao);
    }

    a1.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Ampulheta a2 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] += 300;
    translacao[1][0] -= 10;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a2.transformaVertice(i, cisalhamentoY);
      a2.transformaVertice(i, cisalhamentoY);
      a2.transformaVertice(i, cisalhamentoY);
      a2.moveVertice(i, translacao);
    }

    a2.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Ampulheta a3 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] += 300;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a3.transformaVertice(i, cisalhamentoX);
      a3.transformaVertice(i, cisalhamentoX);
      a3.moveVertice(i, translacao);
    }

    a3.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Ampulheta a4 = new Ampulheta(verticesAmpulheta);

    translacao[0][0] += 300;
    translacao[1][0] -= 20;

    for (int i = 0; i < verticesAmpulheta.length; i++){
      a4.transformaVertice(i, cisalhamentoX);
      a4.transformaVertice(i, cisalhamentoY);
      a4.moveVertice(i, translacao);
    }

    a4.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
