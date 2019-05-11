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

    //Desenhando triângulos da seta 1
    Triangulo t1s1 = new Triangulo(verticesT);

    translacao[0][0] = 615;
    translacao[0][1] = 0;
    translacao[1][0] = 10;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesT.length; i++){
      t1s1.moveVertice(i, translacao);
    }

    t1s1.drawFigura();

    Triangulo t2s1 = new Triangulo(verticesT);

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
        t2s1.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t2s1.transformaVertice(i, reflexaoY);
      }
      t2s1.moveVertice(i, translacao);
    }

    t2s1.drawFigura();

    Triangulo t3s1 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t3s1.moveVertice(i, translacao);
    }

    t3s1.drawFigura();

    Triangulo t4s1 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t4s1.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t4s1.transformaVertice(i, reflexaoY);
      }
      t4s1.moveVertice(i, translacao);
    }

    t4s1.drawFigura();

    Triangulo t5s1 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t5s1.moveVertice(i, translacao);
    }

    t5s1.drawFigura();

    Triangulo t6s1 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t6s1.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t6s1.transformaVertice(i, reflexaoY);
      }
      t6s1.moveVertice(i, translacao);
    }

    t6s1.drawFigura();

    //Desenhando triângulos da seta 2
    Triangulo t1s2 = new Triangulo(verticesT);

    translacao[1][0] += 115;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t1s2.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t1s2.transformaVertice(i, reflexaoY);
      }
      t1s2.moveVertice(i, translacao);
    }

    t1s2.drawFigura();

    Triangulo t2s2 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t2s2.moveVertice(i, translacao);
    }

    t2s2.drawFigura();

    Triangulo t3s2 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t3s2.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t3s2.transformaVertice(i, reflexaoY);
      }
      t3s2.moveVertice(i, translacao);
    }

    t3s2.drawFigura();

    Triangulo t4s2 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t4s2.moveVertice(i, translacao);
    }

    t4s2.drawFigura();

    Triangulo t5s2 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t5s2.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t5s2.transformaVertice(i, reflexaoY);
      }
      t5s2.moveVertice(i, translacao);
    }

    t5s2.drawFigura();

    //Desenhando triângulos da seta 3
    Triangulo t1s3 = new Triangulo(verticesT);

    translacao[1][0] += 115;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t1s3.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t1s3.transformaVertice(i, reflexaoY);
      }
      t1s3.moveVertice(i, translacao);
    }

    t1s3.drawFigura();

    Triangulo t2s3 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t2s3.moveVertice(i, translacao);
    }

    t2s3.drawFigura();

    Triangulo t3s3 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t3s3.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t3s3.transformaVertice(i, reflexaoY);
      }
      t3s3.moveVertice(i, translacao);
    }

    t3s3.drawFigura();

    Triangulo t4s3 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t4s3.moveVertice(i, translacao);
    }

    t4s3.drawFigura();

    //Desenhando triângulos da seta 4
    Triangulo t1s4 = new Triangulo(verticesT);

    translacao[1][0] += 145;

    for (int i = 0; i < verticesT.length; i++){
      t1s4.moveVertice(i, translacao);
    }

    t1s4.drawFigura();

    Triangulo t2s4 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t2s4.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t2s4.transformaVertice(i, reflexaoY);
      }
      t2s4.moveVertice(i, translacao);
    }

    t2s4.drawFigura();

    Triangulo t3s4 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t3s4.moveVertice(i, translacao);
    }

    t3s4.drawFigura();

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

    Seta s1r1 = new Seta(verticesSeta);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 800;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesSeta.length; i++){
      s1r1.moveVertice(i, translacao);
    }

    s1r1.drawFigura();

    Triangulo t1r1 = new Triangulo(verticesT);

    translacao[0][0] += 15;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t1r1.moveVertice(i, translacao);
    }

    t1r1.drawFigura();

    Triangulo t2r1 = new Triangulo(verticesT);

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
        t2r1.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t2r1.transformaVertice(i, reflexaoY);
      }
      t2r1.moveVertice(i, translacao);
    }

    t2r1.drawFigura();

    Triangulo t3r1 = new Triangulo(verticesT);

    translacao[0][0] -= 20;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t3r1.moveVertice(i, translacao);
    }

    t3r1.drawFigura();

    Triangulo t4r1 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      t4r1.moveVertice(i, translacao);
    }

    t4r1.drawFigura();

    Triangulo t5r1 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t5r1.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t5r1.transformaVertice(i, reflexaoY);
      }
      t5r1.moveVertice(i, translacao);
    }

    t5r1.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Seta s1r2 = new Seta(verticesSeta);

    translacao[0][0] += 265;
    translacao[1][0] -= 90;

    for (int i = 0; i < verticesSeta.length; i++){
      s1r2.moveVertice(i, translacao);
    }

    s1r2.drawFigura();

    Triangulo t1r2 = new Triangulo(verticesT);

    translacao[0][0] += 15;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t1r2.moveVertice(i, translacao);
    }

    t1r2.drawFigura();

    Triangulo t2r2 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      t2r2.moveVertice(i, translacao);
    }

    t2r2.drawFigura();

    Triangulo t3r2 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t3r2.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t3r2.transformaVertice(i, reflexaoY);
      }
      t3r2.moveVertice(i, translacao);
    }

    t3r2.drawFigura();

    Triangulo t4r2 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t4r2.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t4r2.transformaVertice(i, reflexaoY);
      }
      t4r2.moveVertice(i, translacao);
    }

    t4r2.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Seta s1r3 = new Seta(verticesSeta);

    translacao[0][0] += 265;
    translacao[1][0] -= 90;

    for (int i = 0; i < verticesSeta.length; i++){
      s1r3.moveVertice(i, translacao);
    }

    s1r3.drawFigura();

    Triangulo t1r3 = new Triangulo(verticesT);

    translacao[0][0] += 15;
    translacao[1][0] += 10;

    for (int i = 0; i < verticesT.length; i++){
      t1r3.moveVertice(i, translacao);
    }

    t1r3.drawFigura();

    Triangulo t2r3 = new Triangulo(verticesT);

    translacao[1][0] += 30;

    for (int i = 0; i < verticesT.length; i++){
      t2r3.moveVertice(i, translacao);
    }

    t2r3.drawFigura();

    Triangulo t3r3 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 50;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t3r3.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t3r3.transformaVertice(i, reflexaoY);
      }
      t3r3.moveVertice(i, translacao);
    }

    t3r3.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Seta s1r4 = new Seta(verticesSeta);

    translacao[0][0] += 265;
    translacao[1][0] -= 90;

    for (int i = 0; i < verticesSeta.length; i++){
      s1r4.moveVertice(i, translacao);
    }

    s1r4.drawFigura();

    Triangulo t1r4 = new Triangulo(verticesT);

    translacao[0][0] += 15;
    translacao[1][0] += 40;

    for (int i = 0; i < verticesT.length; i++){
      t1r4.moveVertice(i, translacao);
    }

    t1r4.drawFigura();


    Triangulo t2r4 = new Triangulo(verticesT);

    translacao[0][0] += 20;
    translacao[1][0] += 20;

    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        t2r4.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        t2r4.transformaVertice(i, reflexaoY);
      }
      t2r4.moveVertice(i, translacao);
    }

    t2r4.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
