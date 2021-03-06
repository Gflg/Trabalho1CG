public class Fase6 extends Tela {

  public Fase6() {
    super(4); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawL();
    drawT();
    drawZ();
    drawRespostas();
  }

  private void drawL() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do L
    Vertice[] verticesL = new Vertice[8];
    verticesL[0] = new Vertice(0, 0, 0);
    verticesL[1] = new Vertice(120, 0, 0);
    verticesL[2] = new Vertice(0, 40, 0);
    verticesL[3] = new Vertice(120, 40, 0);
    verticesL[4] = new Vertice(80, 40, 0);
    verticesL[5] = new Vertice(120, 40, 0);
    verticesL[6] = new Vertice(80, 80, 0);
    verticesL[7] = new Vertice(120, 80, 0);

    LouTouZ l1 = new LouTouZ(verticesL);

    translacao[0][0] = 200;
    translacao[0][1] = 0;
    translacao[1][0] = 50;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesL.length; i++){
      l1.moveVertice(i, translacao);
    }

    l1.drawFigura();

    int i, j;

    for(j = 0; j < 8; j += 4){
      for(i = int(verticesL[j].getX()+translacao[0][0]); i < int(verticesL[j+1].getX()+translacao[0][0]); i++){
        stroke(255, 0, 0);
        line(i, verticesL[j].getY()+translacao[1][0], i, verticesL[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesL[0].getX() + 2.25*translacao[0][0], (verticesL[1].getY() + verticesL[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

    LouTouZ l2 = new LouTouZ(verticesL);

    translacao[0][0] += 400;

    for (i = 0; i < verticesL.length; i++){
      l2.moveVertice(i, translacao);
    }

    l2.drawFigura();

    for(i = int(verticesL[0].getX()+translacao[0][0]); i < int((verticesL[1].getX()+translacao[0][0])-((verticesL[1].getX() - verticesL[0].getX())*2/3)); i++){
      stroke(255, 0, 0);
      line(i, verticesL[0].getY()+translacao[1][0], i, verticesL[2].getY()+translacao[1][0]);
    }

    stroke(0, 0, 0);

    for(i = int(verticesL[4].getX()+translacao[0][0]); i < int(verticesL[5].getX()+translacao[0][0]); i++){
      stroke(255, 0, 0);
      line(i, verticesL[4].getY()+translacao[1][0], i, verticesL[6].getY()+translacao[1][0]);
    }

    stroke(0, 0, 0);

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesL[0].getX() + 1.4*translacao[0][0], (verticesL[1].getY() + verticesL[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

    LouTouZ l3 = new LouTouZ(verticesL);

    translacao[0][0] += 400;

    for (i = 0; i < verticesL.length; i++){
      l3.moveVertice(i, translacao);
    }

    l3.drawFigura();

    for(j = 0; j < 4; j += 4){
      for(i = int((verticesL[j+1].getX()+translacao[0][0])-((verticesL[j+1].getX() - verticesL[j].getX())*2/3)); i < int(verticesL[j+1].getX()+translacao[0][0]); i++){
        stroke(255, 0, 0);
        line(i, verticesL[j].getY()+translacao[1][0], i, verticesL[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0,0,0);

  }

  private void drawT() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do T
    Vertice[] verticesT = new Vertice[8];
    verticesT[0] = new Vertice(0, 0, 0);
    verticesT[1] = new Vertice(120, 0, 0);
    verticesT[2] = new Vertice(0, 40, 0);
    verticesT[3] = new Vertice(120, 40, 0);
    verticesT[4] = new Vertice(40, 40, 0);
    verticesT[5] = new Vertice(80, 40, 0);
    verticesT[6] = new Vertice(40, 80, 0);
    verticesT[7] = new Vertice(80, 80, 0);

    LouTouZ t1 = new LouTouZ(verticesT);

    translacao[0][0] = 200;
    translacao[0][1] = 0;
    translacao[1][0] = 250;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesT.length; i++){
      t1.moveVertice(i, translacao);
    }

    t1.drawFigura();

    int i, j;

    for(j = 0; j < 8; j += 4){
      for(i = int(verticesT[j].getX()+translacao[0][0]); i < int(verticesT[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 255, 0);
        line(i, verticesT[j].getY()+translacao[1][0], i, verticesT[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesT[0].getX() + 2.25*translacao[0][0], (verticesT[1].getY() + verticesT[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

    LouTouZ t2 = new LouTouZ(verticesT);

    translacao[0][0] += 400;

    for (i = 0; i < verticesT.length; i++){
      t2.moveVertice(i, translacao);
    }

    t2.drawFigura();

    for(i = int(verticesT[0].getX()+translacao[0][0]); i < int((verticesT[1].getX()+translacao[0][0])-((verticesT[1].getX() - verticesT[0].getX())*2/3)); i++){
      stroke(0, 255, 0);
      line(i, verticesT[0].getY()+translacao[1][0], i, verticesT[2].getY()+translacao[1][0]);
    }

    stroke(0, 0, 0);

    for(i = int(verticesT[4].getX()+translacao[0][0]); i < int(verticesT[5].getX()+translacao[0][0]); i++){
      stroke(0, 255, 0);
      line(i, verticesT[4].getY()+translacao[1][0], i, verticesT[6].getY()+translacao[1][0]);
    }

    stroke(0, 0, 0);

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesT[0].getX() + 1.4*translacao[0][0], (verticesT[1].getY() + verticesT[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

    LouTouZ t3 = new LouTouZ(verticesT);

    translacao[0][0] += 400;

    for (i = 0; i < verticesT.length; i++){
      t3.moveVertice(i, translacao);
    }

    t3.drawFigura();

    for(j = 0; j < 4; j += 4){
      for(i = int((verticesT[j+1].getX()+translacao[0][0])-((verticesT[j+1].getX() - verticesT[j].getX())*2/3)); i < int(verticesT[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 255, 0);
        line(i, verticesT[j].getY()+translacao[1][0], i, verticesT[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

  }

  private void drawZ() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Z
    Vertice[] verticesZ = new Vertice[8];
    verticesZ[0] = new Vertice(0, 0, 0);
    verticesZ[1] = new Vertice(80, 0, 0);
    verticesZ[2] = new Vertice(0, 40, 0);
    verticesZ[3] = new Vertice(80, 40, 0);
    verticesZ[4] = new Vertice(40, 40, 0);
    verticesZ[5] = new Vertice(120, 40, 0);
    verticesZ[6] = new Vertice(40, 80, 0);
    verticesZ[7] = new Vertice(120, 80, 0);

    LouTouZ z1 = new LouTouZ(verticesZ);

    translacao[0][0] = 200;
    translacao[0][1] = 0;
    translacao[1][0] = 500;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesZ.length; i++){
      z1.moveVertice(i, translacao);
    }

    z1.drawFigura();

    int i, j;

    for(j = 0; j < 8; j += 4){
      for(i = int(verticesZ[j].getX()+translacao[0][0]); i < int(verticesZ[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesZ[0].getX() + 2.25*translacao[0][0], (verticesZ[1].getY() + verticesZ[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

    LouTouZ z2 = new LouTouZ(verticesZ);

    translacao[0][0] += 400;

    for (i = 0; i < verticesZ.length; i++){
      z2.moveVertice(i, translacao);
    }

    z2.drawFigura();

    for(j = 0; j < 8; j += 4){
      for(i = int(verticesZ[j].getX()+translacao[0][0]); i < int(verticesZ[j+1].getX()+translacao[0][0])-((verticesZ[j+1].getX() - verticesZ[j].getX())/2); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

    z2.drawFigura();

    fill(0, 0, 0);
    textSize(40);
    text("→", verticesZ[0].getX() + 1.4*translacao[0][0], (verticesZ[1].getY() + verticesZ[6].getY()) / 2 + translacao[1][0]); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando os vértices do Z
    Vertice[] verticesZ = new Vertice[8];
    verticesZ[0] = new Vertice(0, 0, 0);
    verticesZ[1] = new Vertice(80, 0, 0);
    verticesZ[2] = new Vertice(0, 40, 0);
    verticesZ[3] = new Vertice(80, 40, 0);
    verticesZ[4] = new Vertice(40, 40, 0);
    verticesZ[5] = new Vertice(120, 40, 0);
    verticesZ[6] = new Vertice(40, 80, 0);
    verticesZ[7] = new Vertice(120, 80, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    LouTouZ z1 = new LouTouZ(verticesZ);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 850;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesZ.length; i++){
      z1.moveVertice(i, translacao);
    }

    z1.drawFigura();

    int i, j;

    for(j = 0; j < 4; j += 4){
      for(i = int((verticesZ[j+1].getX()+translacao[0][0])-((verticesZ[j+1].getX() - verticesZ[j].getX())/2)); i < int(verticesZ[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    LouTouZ z2 = new LouTouZ(verticesZ);

    translacao[0][0] += 300;

    for (i = 0; i < verticesZ.length; i++){
      z2.moveVertice(i, translacao);
    }

    z2.drawFigura();

    for(j = 4; j < 8; j += 4){
      for(i = int(verticesZ[j].getX()+translacao[0][0]); i < int(verticesZ[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    LouTouZ z3 = new LouTouZ(verticesZ);

    translacao[0][0] += 300;

    for (i = 0; i < verticesZ.length; i++){
      z3.moveVertice(i, translacao);
    }

    z3.drawFigura();

    for(j = 0; j < 4; j += 4){
      for(i = int(verticesZ[j].getX()+translacao[0][0]); i < int(verticesZ[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    LouTouZ z4 = new LouTouZ(verticesZ);

    translacao[0][0] += 300;

    for (i = 0; i < verticesZ.length; i++){
      z4.moveVertice(i, translacao);
    }

    z4.drawFigura();

    for(j = 0; j < 8; j += 4){
      for(i = int((verticesZ[j+1].getX()+translacao[0][0])-((verticesZ[j+1].getX() - verticesZ[j].getX())/2)); i < int(verticesZ[j+1].getX()+translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, verticesZ[j].getY()+translacao[1][0], i, verticesZ[j+2].getY()+translacao[1][0]);
      }
    }

    stroke(0, 0, 0);

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
