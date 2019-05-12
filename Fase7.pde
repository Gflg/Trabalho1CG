public class Fase7 extends Tela {

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

  public Fase7() {
    super(2);
    setCisalhamentoX(0.7);
    setCisalhamentoY(0.5);
  }

  public void drawTela() {
    drawEstrelas();
    drawPentagonos();
    drawRespostas();
  }

  private void drawEstrelas() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    fill(0, 0, 0);
    textSize(40);

    //Criando os vértices da Estrela
    Vertice pontaDaEstrela = new Vertice(0, 0, 0);

    Estrela estrela1 = new Estrela(pontaDaEstrela);

    stroke(255, 0, 0);

    translacao[0][0] = 510;
    translacao[0][1] = 0;
    translacao[1][0] = 90;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < estrela1.vertices.length; i++) {
      estrela1.moveVertice(i, translacao);
    }

    estrela1.drawFigura();

    stroke(0,0,0);
    text("→", 650, 140); //Posição inicial do texto x e y

    translacao[0][0] = 200;
    translacao[1][0] = 0;

    for (int i = 0; i < estrela1.vertices.length; i++) {
      estrela1.transformaVertice(i, cisalhamentoX);
      estrela1.moveVertice(i, translacao);
    }

    stroke(0, 0, 255);

    estrela1.drawFigura();

    Estrela estrela2 = new Estrela(pontaDaEstrela);

    stroke(255, 0, 0);

    translacao[0][0] = 510;
    translacao[1][0] = 390;

    for (int i = 0; i < estrela2.vertices.length; i++) {
      estrela2.moveVertice(i, translacao);
    }

    estrela2.drawFigura();

    translacao[0][0] = 320;
    translacao[1][0] = -250;

    for (int i = 0; i < estrela2.vertices.length; i++) {
      estrela2.transformaVertice(i, cisalhamentoY);
      estrela2.moveVertice(i, translacao);
    }

    stroke(0,0,0);
    text("→", 650, 440); //Posição inicial do texto x e y

    stroke(0, 255, 0);

    estrela2.drawFigura();

  }

  private void drawPentagonos() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Pentágono
    Vertice pontaPentagono = new Vertice(0, 0, 0);

    Pentagono pentagono1 = new Pentagono(pontaPentagono);

    stroke(163, 16, 163);

    translacao[0][0] = 510;
    translacao[0][1] = 0;
    translacao[1][0] = 240;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < pentagono1.vertices.length; i++) {
      pentagono1.moveVertice(i, translacao);
    }

    pentagono1.drawFigura();

    stroke(0, 0, 0);

    text("→", 650, 290); //Posição inicial do texto x e y

    translacao[0][0] = 300;
    translacao[1][0] = -250;

    for (int i = 0; i < pentagono1.vertices.length; i++) {
      pentagono1.transformaVertice(i, cisalhamentoY);
      pentagono1.moveVertice(i, translacao);
    }

    stroke(0, 255, 0);

    pentagono1.drawFigura();

    Pentagono pentagono2 = new Pentagono(pontaPentagono);

    stroke(163, 16, 163);

    translacao[0][0] = 510;
    translacao[1][0] = 540;

    for (int i = 0; i < pentagono2.vertices.length; i++) {
      pentagono2.moveVertice(i, translacao);
    }

    pentagono2.drawFigura();

    stroke(0, 0, 0);

    text("→", 650, 590); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices da Estrela
    Vertice pontaDaEstrela = new Vertice(0, 0, 0);

    //Criando os vértices do Pentágono
    Vertice pontaDoPentagono = new Vertice(0, 0, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Estrela estrela = new Estrela(pontaDaEstrela);

    stroke(255, 0, 0);

    translacao[0][0] = 120;
    translacao[0][1] = 0;
    translacao[1][0] = 800;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < estrela.vertices.length; i++) {
      estrela.moveVertice(i, translacao);
    }

    estrela.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Pentagono pentagono1 = new Pentagono(pontaDoPentagono);

    translacao[0][0] += 300;

    for (int i = 0; i < pentagono1.vertices.length; i++) {
      pentagono1.transformaVertice(i, cisalhamentoX);
      pentagono1.moveVertice(i, translacao);
    }

    stroke(0, 0, 255);

    pentagono1.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Pentagono pentagono2 = new Pentagono(pontaDoPentagono);

    translacao[0][0] += 350;

    for (int i = 0; i < pentagono2.vertices.length; i++) {
      pentagono2.transformaVertice(i, cisalhamentoY);
      pentagono2.moveVertice(i, translacao);
    }

    stroke(20, 186, 50);

    pentagono2.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Pentagono pentagono3 = new Pentagono(pontaDoPentagono);

    translacao[0][0] += 300;

    for (int i = 0; i < pentagono3.vertices.length; i++) {
      pentagono3.moveVertice(i, translacao);
    }

    stroke(163, 16, 163);

    pentagono3.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
