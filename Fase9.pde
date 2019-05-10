public class Fase9 extends Tela {

  public Fase9() {
    super(2); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawGiros();
    drawRespostas();
  }

  private void drawGiros() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Giro
    Vertice[] verticesGiro = new Vertice[9];

    verticesGiro[0] = new Vertice(0, 0, 0);
    verticesGiro[1] = new Vertice(0, -100, 0);
    verticesGiro[2] = new Vertice(50, -50, 0);
    verticesGiro[3] = new Vertice(100, 0, 0);
    verticesGiro[4] = new Vertice(50, 50, 0);
    verticesGiro[5] = new Vertice(0, 100, 0);
    verticesGiro[6] = new Vertice(-50, 50, 0);
    verticesGiro[7] = new Vertice(-100, 0, 0);
    verticesGiro[8] = new Vertice(-50, -50, 0);

    Giro g1 = new Giro(verticesGiro);

    translacao[0][0] = 600;
    translacao[0][1] = 0;
    translacao[1][0] = 100;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesGiro.length; i++){
      g1.moveVertice(i, translacao);
    }

    stroke(0,0,0);

    g1.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("H", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("F", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("B", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("A", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("E", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("C", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("D", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] - 0.005*displayWidth,  translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[1].getY())/1.5);

    Giro g2 = new Giro(verticesGiro);

    translacao[1][0] += 250;

    for (int i = 0; i < verticesGiro.length; i++){
      g2.moveVertice(i, translacao);
    }

    stroke(0,0,0);

    g2.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("C", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("H", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("F", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("B", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("A", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("E", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("D", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] - 0.005*displayWidth,  translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[1].getY())/1.5);

    Giro g3 = new Giro(verticesGiro);

    translacao[1][0] += 250;

    for (int i = 0; i < verticesGiro.length; i++){
      g3.moveVertice(i, translacao);
    }

    stroke(0,0,0);

    g3.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("G", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("D", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("C", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("H", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("F", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("B", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("A", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("E", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] - 0.005*displayWidth,  translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[1].getY())/1.5);

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Giro
    Vertice[] verticesGiro = new Vertice[9];
    verticesGiro[0] = new Vertice(0, 0, 0);
    verticesGiro[1] = new Vertice(0, -100, 0);
    verticesGiro[2] = new Vertice(50, -50, 0);
    verticesGiro[3] = new Vertice(100, 0, 0);
    verticesGiro[4] = new Vertice(50, 50, 0);
    verticesGiro[5] = new Vertice(0, 100, 0);
    verticesGiro[6] = new Vertice(-50, 50, 0);
    verticesGiro[7] = new Vertice(-100, 0, 0);
    verticesGiro[8] = new Vertice(-50, -50, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Giro g1 = new Giro(verticesGiro);

    translacao[0][0] = 140;
    translacao[0][1] = 0;
    translacao[1][0] = 850;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesGiro.length; i++){
      g1.moveVertice(i, translacao);
    }

    g1.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("H", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("E", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("B", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("F", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("A", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("C", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("D", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Giro g2 = new Giro(verticesGiro);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesGiro.length; i++){
      g2.moveVertice(i, translacao);
    }

    g2.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("B", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("A", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("E", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("D", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("C", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("H", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("F", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Giro g3 = new Giro(verticesGiro);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesGiro.length; i++){
      g3.moveVertice(i, translacao);
    }

    g3.drawFigura();

    fill(0,0,0);
    textSize(20);
    text("C", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("H", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("A", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("F", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("D", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("B", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("E", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Giro g4 = new Giro(verticesGiro);

    translacao[0][0] += 300;

    for (int i = 0; i < verticesGiro.length; i++){
      g4.moveVertice(i, translacao);
    }

    g4.drawFigura();

    text("B", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("F", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("H", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("C", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("A", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] + (verticesGiro[5].getY() - verticesGiro[3].getY())/3.5); //Posição inicial do texto x e y
    text("D", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX()), translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/7); //Posição inicial do texto x e y
    text("G", translacao[0][0] + (verticesGiro[3].getX() - verticesGiro[4].getX())/3, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y
    text("E", translacao[0][0] - (verticesGiro[3].getX() - verticesGiro[4].getX())/2.5, translacao[1][0] - (verticesGiro[5].getY() - verticesGiro[3].getY())/2); //Posição inicial do texto x e y

  }

  /* <---- FIM DA RESPOSTA 4 ----> */

}
