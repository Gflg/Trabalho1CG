public class Fase5 extends Tela {

  public Fase5() {
    super(1); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawTriangulo();
    drawQuadrado();
    drawRespostas();
  }

  private void drawTriangulo() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de reflexão
    float[][] reflexao = new float[3][3];

    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(0, 0, 0);
    verticesTriangulo[1] = new Vertice(100, 0, 0);
    verticesTriangulo[2] = new Vertice(50, -100, 0);

    Triangulo t1 = new Triangulo(verticesTriangulo);

    translacao[0][0] = 550;
    translacao[0][1] = 0;
    translacao[1][0] = 350;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }

    t1.drawFigura();

    Triangulo t9 = new Triangulo(verticesTriangulo);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }

    t9.drawFigura();

    fill(0, 0, 0);

    reflexao[0][0] = 0;
    reflexao[0][1] = 0;
    reflexao[1][0] = 2 * (verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    reflexao[1][1] = 0;
    reflexao[2][0] = 0;
    reflexao[2][1] = 0;

    Triangulo t2 = new Triangulo(verticesTriangulo);

    translacao[0][0] = verticesTriangulo[1].getX() - verticesTriangulo[0].getX();
    translacao[1][0] += 100;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawFigura();

    Triangulo t6 = new Triangulo(verticesTriangulo);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }

    t6.drawFigura();

    //Criando os vértices do Triângulo
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(0, 0, 0);
    verticesTrianguloH[1] = new Vertice(0, 100, 0);
    verticesTrianguloH[2] = new Vertice(-100, 50, 0);

    Triangulo t3 = new Triangulo(verticesTrianguloH);

    translacao[0][0] = 100;
    translacao[1][0] = 350;    

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t3.moveVertice(i, translacao);
    }

    t3.drawFigura();

    Triangulo t7 = new Triangulo(verticesTrianguloH);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }

    t7.drawFigura();

    Triangulo t11 = new Triangulo(verticesTrianguloH);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }

    t11.drawFigura();

    Triangulo t4 = new Triangulo(verticesTrianguloH);

    reflexao[0][0] = 2 * (verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;

    translacao[0][0] = 2 * (verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }

    t4.drawFigura();

    Triangulo t12 = new Triangulo(verticesTrianguloH);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t12.moveVertice(i, translacao);
      if (i==2)
        t12.moveVertice(i, reflexao);
    }

    t12.drawFigura();

  }

  private void drawQuadrado() {

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Criando vértices do Retângulo
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero[1] = new Vertice(100, 0, 0);
    verticesQuadrilatero[2] = new Vertice(0, 100, 0);
    verticesQuadrilatero[3] = new Vertice(100, 100, 0);

    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 350;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }

    q1.drawFigura();

    for(int i = 100; i < 200; i++){
        stroke(0, 255, 0);
        line(i, 350, i, 400);
    }

    stroke(0, 0, 0);

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 250, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 650, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 1150, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }

    for(int i = 50 + int(translacao[0][0]); i < 100 + int(translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, 350, i, 450);
    }

    stroke(0, 0, 0);

    q2.drawFigura();

    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);

    translacao[0][0] += 450;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }

    for(int i = 0 + int(translacao[0][0]); i < 100 + int(translacao[0][0]); i++){
        stroke(255, 0, 0);
        line(i, 400, i, 450);
    }

    stroke(0, 0, 0);

    q3.drawFigura();

  }

  protected void drawRespostas() {

    //Desenhando área padrão de resposta
    super.drawRespostas();

    //Array de translacao
    float[][] translacao = new float[3][3];

    //Array de reflexão
    float[][] reflexao = new float[3][3];

    //Criando os vértices do Quadrado
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero[1] = new Vertice(50, 0, 0);
    verticesQuadrilatero[2] = new Vertice(0, 50, 0);
    verticesQuadrilatero[3] = new Vertice(50, 50, 0);

    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(0, 0, 0);
    verticesTriangulo[1] = new Vertice(50, 0, 0);
    verticesTriangulo[2] = new Vertice(25, -50, 0);

    //Criando os vértices do Triângulo H
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(0, 0, 0);
    verticesTrianguloH[1] = new Vertice(0, 50, 0);
    verticesTrianguloH[2] = new Vertice(-50, 25, 0);

  /* <---- INICIO DA RESPOSTA 1 ----> */

    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    translacao[0][0] = 100;
    translacao[0][1] = 0;
    translacao[1][0] = 825;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }

    q1.drawFigura();

    for(int i = 100; i < 125; i++){
        stroke(0, 255, 0);
        line(i, 825, i, 875);
    }

    stroke(0, 0, 0);

    Triangulo t1 = new Triangulo(verticesTriangulo);

    translacao[0][0] = 100;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }

    t1.drawFigura();

    Triangulo t2 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[0][1] = 0;
    reflexao[1][0] = 2 * (verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    reflexao[1][1] = 0;
    reflexao[2][0] = 0;
    reflexao[2][1] = 0;

    translacao[1][0] += 50;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawFigura();

    Triangulo t4 = new Triangulo(verticesTrianguloH);

    reflexao[0][0] = 2 * (verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;

    translacao[0][0] = 150;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }

    t4.drawFigura();

  /* <---- FIM DA RESPOSTA 1 ----> */

  /* <---- INICIO DA RESPOSTA 2 ----> */

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    translacao[0][0] = 400;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }

    q2.drawFigura();

    for(int i = 0 + int(translacao[0][0]); i < 25 + int(translacao[0][0]); i++){
        stroke(255, 0, 0);
        line(i, 825, i, 875);
    }

    stroke(0, 0, 0);

    Triangulo t6 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2 * (verticesTriangulo[0].getY() - verticesTriangulo[2].getY());

    translacao[1][0] += 50;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }

    t6.drawFigura();

    Triangulo t7 = new Triangulo(verticesTrianguloH);

    translacao[0][0] = 400;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }

    t7.drawFigura();

    Triangulo t8 = new Triangulo(verticesTrianguloH);

    reflexao[0][0] = 2 * (verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;

    translacao[0][0] += 50;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t8.moveVertice(i, translacao);
      if (i==2)
        t8.moveVertice(i, reflexao);
    }

    t8.drawFigura();

  /* <---- FIM DA RESPOSTA 2 ----> */

  /* <---- INICIO DA RESPOSTA 3 ----> */

    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);

    translacao[1][0] = 825;
    translacao[0][0] = 700;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }

    q3.drawFigura();

    for(int i = 0 + int(translacao[0][0]); i < 25 + int(translacao[0][0]); i++){
        stroke(0, 0, 255);
        line(i, 825, i, 875);
    }

    stroke(0, 0, 0);

    Triangulo t9 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }

    t9.drawFigura();

    Triangulo t10 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2 * (verticesTriangulo[0].getY() - verticesTriangulo[2].getY());

    translacao[1][0] += 50;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t10.moveVertice(i, translacao);
      if (i==2)
        t10.moveVertice(i, reflexao);
    }

    t10.drawFigura();

    Triangulo t11 = new Triangulo(verticesTrianguloH);

    translacao[0][0] = 700;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }

    t11.drawFigura();

  /* <---- FIM DA RESPOSTA 3 ----> */

  /* <---- INICIO DA RESPOSTA 4 ----> */

    Quadrilatero q4 = new Quadrilatero(verticesQuadrilatero);

    translacao[1][0] = 825;
    translacao[0][0] = 1000;

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q4.moveVertice(i, translacao);
    }

    q4.drawFigura();

    for(int i = 0 + int(translacao[0][0]); i < 25 + int(translacao[0][0]); i++){
        stroke(255, 0, 255);
        line(i, 825, i, 875);
    }

    stroke(0, 0, 0);

    Triangulo t13 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t13.moveVertice(i, translacao);
    }

    t13.drawFigura();

    Triangulo t14 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2 * (verticesTriangulo[0].getY() - verticesTriangulo[2].getY());

    translacao[1][0] += 50;

    for (int i = 0; i < verticesTriangulo.length; i++){
      t14.moveVertice(i, translacao);
      if (i==2)
        t14.moveVertice(i, reflexao);
    }

    t14.drawFigura();

    Triangulo t16 = new Triangulo(verticesTrianguloH);

    reflexao[0][0] = 2 * (verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;

    translacao[0][0] = 1050;
    translacao[1][0] = 825;

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t16.moveVertice(i, translacao);
      if (i==2)
        t16.moveVertice(i, reflexao);
    }

    t16.drawFigura();

  /* <---- FIM DA RESPOSTA 4 ----> */

  }

}
