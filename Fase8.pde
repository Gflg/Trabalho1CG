public class Fase8 extends Tela {

  public Fase8() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawSeta();
    drawTriangulo();
    drawRespostas();
  }

  private void drawSeta() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices da Seta
    Vertice[] verticesSeta = new Vertice[7];
    verticesSeta[0] = new Vertice(0, 0, 0);
    verticesSeta[1] = new Vertice(0, 50, 0);
    verticesSeta[2] = new Vertice(50, 0, 0);
    verticesSeta[3] = new Vertice(50, 50, 0);
    verticesSeta[4] = new Vertice(-50, 50, 0);
    verticesSeta[5] = new Vertice(100, 50, 0);
    verticesSeta[6] = new Vertice(25, 100, 0);

    Seta s1 = new Seta(verticesSeta);

    translacao[0][0] = 600;
    translacao[0][1] = 0;
    translacao[1][0] = 0;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesSeta.length; i++){
      s1.moveVertice(i, translacao);
    }

    s1.drawFigura();

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] + 0.005*displayWidth,  translacao[1][0] + 1.5*verticesSeta[6].getY() - verticesSeta[0].getY());

    Seta s2 = new Seta(verticesSeta);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesSeta.length; i++){
      s2.moveVertice(i, translacao);
    }

    s2.drawFigura();

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] + 0.005*displayWidth,  translacao[1][0] + 1.5*verticesSeta[6].getY() - verticesSeta[0].getY());

    Seta s3 = new Seta(verticesSeta);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesSeta.length; i++){
      s3.moveVertice(i, translacao);
    }

    s3.drawFigura();

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] + 0.005*displayWidth,  translacao[1][0] + 1.5*verticesSeta[6].getY() - verticesSeta[0].getY());

    Seta s4 = new Seta(verticesSeta);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesSeta.length; i++){
      s4.moveVertice(i, translacao);
    }

    s4.drawFigura();

    fill(0,0,0);
    textSize(40);
    text("↓", translacao[0][0] + 0.005*displayWidth,  translacao[1][0] + 1.5*verticesSeta[6].getY() - verticesSeta[0].getY());

  }

  private void drawTriangulo() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de reflexao no eixo X
    float[][] reflexaoX = new float[3][3];

    //Array de reflexao no eixo Y
    float[][] reflexaoY = new float[3][3];

    //Criando os vértices do Triangulo
    Vertice[] verticesT = new Vertice[3];
    verticesT[0] = new Vertice(0, 0, 0);
    verticesT[1] = new Vertice(20, 0, 0);
    verticesT[2] = new Vertice(0, 20, 0);

    Triangulo l1 = new Triangulo(verticesT);

    translacao[0][0] = 610;
    translacao[0][1] = 0;
    translacao[1][0] = 10;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesT.length; i++){
      l1.moveVertice(i, translacao);
    }

    l1.drawFigura();

    Triangulo l13 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    reflexaoX[0][0] = -1;
    reflexaoX[0][1] = 0;
    reflexaoX[1][0] = 0;
    reflexaoX[1][1] = 1;
    reflexaoX[2][0] = 0;
    reflexaoX[2][1] = 0;

    reflexaoY[0][0] = 1;
    reflexaoY[0][1] = 0;
    reflexaoY[1][0] = 0;
    reflexaoY[1][1] = -1;
    reflexaoY[2][0] = 0;
    reflexaoY[2][1] = 0;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l13.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l13.transformaVertice(i, reflexaoY);
      }
      l13.moveVertice(i, translacao);
    }

    l13.drawFigura();

    Triangulo l14 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l14.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l14.transformaVertice(i, reflexaoY);
      }
      l14.moveVertice(i, translacao);
    }

    l14.drawFigura();

    Triangulo l15 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l15.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l15.transformaVertice(i, reflexaoY);
      }
      l15.moveVertice(i, translacao);
    }

    l15.drawFigura();

    Triangulo l16 = new Triangulo(verticesT);

    translacao[1][0] += 115;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l16.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l16.transformaVertice(i, reflexaoY);
      }
      l16.moveVertice(i, translacao);
    }

    l16.drawFigura();

    Triangulo l17 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l17.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l17.transformaVertice(i, reflexaoY);
      }
      l17.moveVertice(i, translacao);
    }

    l17.drawFigura();

    Triangulo l18 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l18.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l18.transformaVertice(i, reflexaoY);
      }
      l18.moveVertice(i, translacao);
    }

    l18.drawFigura();

    Triangulo l19 = new Triangulo(verticesT);

    translacao[1][0] += 115;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l19.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l19.transformaVertice(i, reflexaoY);
      }
      l19.moveVertice(i, translacao);
    }

    l19.drawFigura();

    Triangulo l20 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l20.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l20.transformaVertice(i, reflexaoY);
      }
      l20.moveVertice(i, translacao);
    }

    l20.drawFigura();

    Triangulo l23 = new Triangulo(verticesT);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l23.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l23.transformaVertice(i, reflexaoY);
      }
      l23.moveVertice(i, translacao);
    }

    l23.drawFigura();

    Triangulo l2 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] = 40;

    for (int i = 0; i < verticesT.length; i++){
      l2.moveVertice(i, translacao);
    }

    l2.drawFigura();

    Triangulo l5 = new Triangulo(verticesT);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesT.length; i++){
      l5.moveVertice(i, translacao);
    }

    l5.drawFigura();

    Triangulo l8 = new Triangulo(verticesT);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesT.length; i++){
      l8.moveVertice(i, translacao);
    }

    l8.drawFigura();

    Triangulo l11 = new Triangulo(verticesT);

    translacao[1][0] = 840;
    translacao[0][0] = 115;

    for (int i = 0; i < verticesT.length; i++){
      l11.moveVertice(i, translacao);
    }

    l11.drawFigura();

    Triangulo l3 = new Triangulo(verticesT);

    translacao[1][0] = 70;

    for (int i = 0; i < verticesT.length; i++){
      l3.moveVertice(i, translacao);
    }

    l3.drawFigura();

    Triangulo l6 = new Triangulo(verticesT);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesT.length; i++){
      l6.moveVertice(i, translacao);
    }

    l6.drawFigura();

    Triangulo l9 = new Triangulo(verticesT);

    translacao[1][0] += 175;

    for (int i = 0; i < verticesT.length; i++){
      l9.moveVertice(i, translacao);
    }

    l9.drawFigura();

    Triangulo l12 = new Triangulo(verticesT);

    translacao[1][0] = 870;
    translacao[0][0] = 115;

    for (int i = 0; i < verticesT.length; i++){
      l12.moveVertice(i, translacao);
    }

    l12.drawFigura();

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de reflexao no eixo X
    float[][] reflexaoX = new float[3][3];

    //Array de reflexao no eixo Y
    float[][] reflexaoY = new float[3][3];

    //Criando os vértices do Triângulo
    Vertice[] verticesT = new Vertice[3];
    verticesT[0] = new Vertice(0, 0, 0);
    verticesT[1] = new Vertice(20, 0, 0);
    verticesT[2] = new Vertice(0, 20, 0);

    //Criando os vértices da Seta
    Vertice[] verticesSeta = new Vertice[7];
    verticesSeta[0] = new Vertice(0, 0, 0);
    verticesSeta[1] = new Vertice(0, 50, 0);
    verticesSeta[2] = new Vertice(50, 0, 0);
    verticesSeta[3] = new Vertice(50, 50, 0);
    verticesSeta[4] = new Vertice(-50, 50, 0);
    verticesSeta[5] = new Vertice(100, 50, 0);
    verticesSeta[6] = new Vertice(25, 100, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Seta s1 = new Seta(verticesSeta);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 800;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesSeta.length; i++){
      s1.moveVertice(i, translacao);
    }

    s1.drawFigura();

    Triangulo l1 = new Triangulo(verticesT);

    translacao[1][0] = 810;
    translacao[0][0] = 115;

    for (int i = 0; i < verticesT.length; i++){
      l1.moveVertice(i, translacao);
    }

    l1.drawFigura();

    Triangulo l13 = new Triangulo(verticesT);

    translacao[1][0] += 20;
    translacao[0][0] += 20;

    reflexaoX[0][0] = -1;
    reflexaoX[0][1] = 0;
    reflexaoX[1][0] = 0;
    reflexaoX[1][1] = 1;
    reflexaoX[2][0] = 0;
    reflexaoX[2][1] = 0;

    reflexaoY[0][0] = 1;
    reflexaoY[0][1] = 0;
    reflexaoY[1][0] = 0;
    reflexaoY[1][1] = -1;
    reflexaoY[2][0] = 0;
    reflexaoY[2][1] = 0;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l13.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l13.transformaVertice(i, reflexaoY);
      }
      l13.moveVertice(i, translacao);
    }

    l13.drawFigura();

    Triangulo l11 = new Triangulo(verticesT);

    translacao[1][0] += 10;
    translacao[0][0] -= 20;

    for (int i = 0; i < verticesT.length; i++){
      l11.moveVertice(i, translacao);
    }

    l11.drawFigura();

    Triangulo l12 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      l12.moveVertice(i, translacao);
    }

    l12.drawFigura();

    Triangulo l15 = new Triangulo(verticesT);

    translacao[1][0] += 20;
    translacao[0][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l15.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l15.transformaVertice(i, reflexaoY);
      }
      l15.moveVertice(i, translacao);
    }

    l15.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Seta s2 = new Seta(verticesSeta);

    translacao[0][0] = 400;
    translacao[1][0] = 800;

    for (int i = 0; i < verticesSeta.length; i++){
      s2.moveVertice(i, translacao);
    }

    s2.drawFigura();

    Triangulo l2 = new Triangulo(verticesT);

    translacao[1][0] = 810;
    translacao[0][0] = 415;

    for (int i = 0; i < verticesT.length; i++){
      l2.moveVertice(i, translacao);
    }

    l2.drawFigura();

    Triangulo l3 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      l3.moveVertice(i, translacao);
    }

    l3.drawFigura();

    Triangulo l17 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l17.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l17.transformaVertice(i, reflexaoY);
      }
      l17.moveVertice(i, translacao);
    }

    l17.drawFigura();

    Triangulo l18 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l18.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l18.transformaVertice(i, reflexaoY);
      }
      l18.moveVertice(i, translacao);
    }

    l18.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Seta s3 = new Seta(verticesSeta);

    translacao[0][0] = 700;
    translacao[1][0] = 800;

    for (int i = 0; i < verticesSeta.length; i++){
      s3.moveVertice(i, translacao);
    }

    s3.drawFigura();

    Triangulo l5 = new Triangulo(verticesT);

    translacao[1][0] = 810;
    translacao[0][0] = 715;

    for (int i = 0; i < verticesT.length; i++){
      l5.moveVertice(i, translacao);
    }

    l5.drawFigura();

    Triangulo l6 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      l6.moveVertice(i, translacao);
    }

    l6.drawFigura();

    Triangulo l21 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 50;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l21.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l21.transformaVertice(i, reflexaoY);
      }
      l21.moveVertice(i, translacao);
    }

    l21.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Seta s4 = new Seta(verticesSeta);

    translacao[0][0] = 1000;
    translacao[1][0] = 800;

    for (int i = 0; i < verticesSeta.length; i++){
      s4.moveVertice(i, translacao);
    }

    s4.drawFigura();

    Triangulo l9 = new Triangulo(verticesT);

    translacao[1][0] = 840;
    translacao[0][0] = 1015;

    for (int i = 0; i < verticesT.length; i++){
      l9.moveVertice(i, translacao);
    }

    l9.drawFigura();


    Triangulo l23 = new Triangulo(verticesT);

    translacao[1][0] += 20;
    translacao[0][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l23.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l23.transformaVertice(i, reflexaoY);
      }
      l23.moveVertice(i, translacao);
    }

    l23.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
