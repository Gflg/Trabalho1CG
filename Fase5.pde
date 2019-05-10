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
    float[][] translacao = {{550}, {350}, {0}};
    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(0, 0, 0);
    verticesTriangulo[1] = new Vertice(100, 0, 0);
    verticesTriangulo[2] = new Vertice(50, -100, 0);
    
    Triangulo t1 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }
    
    //Draw do triângulo com os vértices
    t1.drawFigura();
    
    translacao[0][0] += 450;
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }
    
    t9.drawFigura();
    
    //As próximas coisas criadas serão pintadas de preto
    fill(0, 0, 0);

    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo

    float[][] reflexao = {{0}, {2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY())}, {0}};
    
    translacao[0][0] = verticesTriangulo[1].getX() - verticesTriangulo[0].getX();
    translacao[1][0] += 100;
    Triangulo t2 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawFigura();
    
    translacao[0][0] += 450;
    
    Triangulo t6 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }

    t6.drawFigura();

    translacao[0][0] = 100;
    translacao[1][0] = 350;    
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(0, 0, 0);
    verticesTrianguloH[1] = new Vertice(0, 100, 0);
    verticesTrianguloH[2] = new Vertice(-100, 50, 0);
    Triangulo t3 = new Triangulo(verticesTrianguloH);

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t3.moveVertice(i, translacao);
    }

    t3.drawFigura();

    translacao[0][0] += 450;

    Triangulo t7 = new Triangulo(verticesTrianguloH);

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }

    t7.drawFigura();

    translacao[0][0] += 450;

    Triangulo t11 = new Triangulo(verticesTrianguloH);

    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }

    t11.drawFigura();

    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;

    translacao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());

    Triangulo t4 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }
    
    t4.drawFigura();

    translacao[0][0] += 450;
    
    Triangulo t12 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t12.moveVertice(i, translacao);
      if (i==2)
        t12.moveVertice(i, reflexao);
    }
    
    t12.drawFigura();
  }

  private void drawQuadrado() {
    float[][] translacao = {{100}, {350}, {0}};
    //Criando vértices do Retângulo
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero[1] = new Vertice(100, 0, 0);
    verticesQuadrilatero[2] = new Vertice(0, 100, 0);
    verticesQuadrilatero[3] = new Vertice(100, 100, 0);
    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    //Draw do quadrado com os vértices
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }
    q1.drawFigura();
    
    for(int i=100;i<200;i++){
        stroke(0,255,0);
        line(i, 350, i, 400);
    }
    
    stroke(0,0,0);
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 250, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 650, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", translacao[0][0] + verticesQuadrilatero[0].getX() + 1150, translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado

    translacao[0][0] += 450;

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }
    
    for(int i=50 + int(translacao[0][0]);i<100 + int(translacao[0][0]);i++){
        stroke(0,0,255);
        line(i, 350, i, 450);
    }
    
    stroke(0,0,0);
    q2.drawFigura();
    
    translacao[0][0] += 450;
    
    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }
    
    for(int i=0 + int(translacao[0][0]);i<100 + int(translacao[0][0]);i++){
        stroke(255,0,0);
        line(i, 400, i, 450);
    }
    
    stroke(0,0,0);
    q3.drawFigura();

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{100},{825}, {0}};
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0, 0);
    verticesQuadrilatero[1] = new Vertice(50, 0, 0);
    verticesQuadrilatero[2] = new Vertice(0, 50, 0);
    verticesQuadrilatero[3] = new Vertice(50, 50, 0);
    
    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }
    q1.drawFigura();
    
    for(int i=100; i<125; i++){
        stroke(0,255,0);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    translacao[0][0] = 100;
    translacao[1][0] = 825;
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(0, 0, 0);
    verticesTriangulo[1] = new Vertice(50, 0, 0);
    verticesTriangulo[2] = new Vertice(25, -50, 0);
    Triangulo t1 = new Triangulo(verticesTriangulo);

    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }
    t1.drawFigura();
    
    
    float[][] reflexao = {{0}, {2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY())}, {0}};
    
    translacao[1][0] += 50;
    Triangulo t2 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawFigura();
    
    translacao[0][0] = 100;
    translacao[1][0] = 825;
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(0, 0, 0);
    verticesTrianguloH[1] = new Vertice(0, 50, 0);
    verticesTrianguloH[2] = new Vertice(-50, 25, 0);

    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] += 50;
    
    Triangulo t4 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }
    
    t4.drawFigura();
    
    //Segunda resposta
    
    translacao[0][0] = 400;
    translacao[1][0] = 825;
    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }
    
    q2.drawFigura();
    
    for(int i=0 + int(translacao[0][0]); i<25 + int(translacao[0][0]); i++){
        stroke(255,0,0);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    translacao[1][0] += 50;
    Triangulo t6 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }
    
    t6.drawFigura();
    
    translacao[0][0] = 400;
    translacao[1][0] = 825;
    
    Triangulo t7 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }
    
    t7.drawFigura();
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] += 50;
    
    Triangulo t8 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t8.moveVertice(i, translacao);
      if (i==2)
        t8.moveVertice(i, reflexao);
    }
    
    t8.drawFigura();
    
    //Terceira resposta
    translacao[1][0] = 825;
    translacao[0][0] = 700;
    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }
    
    q3.drawFigura();
    
    for(int i=0 + int(translacao[0][0]); i<25 + int(translacao[0][0]); i++){
        stroke(0,0,255);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }
    
    t9.drawFigura();
    
    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    translacao[1][0] += 50;
    Triangulo t10 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t10.moveVertice(i, translacao);
      if (i==2)
        t10.moveVertice(i, reflexao);
    }
    
    t10.drawFigura();
    
    translacao[0][0] = 700;
    translacao[1][0] = 825;
    
    Triangulo t11 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }
    
    t11.drawFigura();

    //Quarta resposta
    translacao[1][0] = 825;
    translacao[0][0] = 1000;
    Quadrilatero q4 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q4.moveVertice(i, translacao);
    }
    
    q4.drawFigura();
    
    for(int i=0 + int(translacao[0][0]); i<25 + int(translacao[0][0]); i++){
        stroke(255,0,255);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    Triangulo t13 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t13.moveVertice(i, translacao);
    }
    
    t13.drawFigura();
    
    translacao[1][0] += 50;
    
    Triangulo t14 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t14.moveVertice(i, translacao);
      if (i==2)
        t14.moveVertice(i, reflexao);
    }
    
    t14.drawFigura();

    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 1050;
    translacao[1][0] = 825;
    
    Triangulo t16 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t16.moveVertice(i, translacao);
      if (i==2)
        t16.moveVertice(i, reflexao);
    }
    
    t16.drawFigura();
  }

}
