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
    float[][] translacao = {{450},{0}};
    //Criando os vértices do Triângulo
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(100, 350);
    verticesTriangulo[1] = new Vertice(200, 350);
    verticesTriangulo[2] = new Vertice(150, 250);
    /*Triangulo t1 = new Triangulo(verticesTriangulo);
<<<<<<< HEAD

=======
>>>>>>> 508da67e28e5c63c5218e1b58c6e5235dc186aab
    //Draw do triângulo com os vértices
    t1.drawTriangulo();*/
    
    Triangulo t5 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t5.moveVertice(i, translacao);
    }
    
    t5.drawTriangulo();
    
    translacao[0][0] += 450;
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }
    
    t9.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de preto
    fill(0, 0, 0);

    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo

    float[][] reflexao = {{0},{2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY())}};
    
    translacao[0][0] = 0;
    translacao[1][0] = 100;
    Triangulo t2 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawTriangulo();
    
    translacao[0][0] += 450;
    
    Triangulo t6 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }
    
    t6.drawTriangulo();
    
    translacao[0][0] += 450;
    
    /*Triangulo t10 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t10.moveVertice(i, translacao);
      if (i==2)
        t10.moveVertice(i, reflexao);
    }
    
    t10.drawTriangulo();*/
    
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(100, 350);
    verticesTrianguloH[1] = new Vertice(100, 450);
    verticesTrianguloH[2] = new Vertice(0, 400);
    Triangulo t3 = new Triangulo(verticesTrianguloH);
    
    t3.drawTriangulo();
    
    translacao[0][0] = 450;
    translacao[1][0] = 0;
    
    Triangulo t7 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }
    
    t7.drawTriangulo();
    
    translacao[0][0] += 450;
    
    Triangulo t11 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }
    
    t11.drawTriangulo();
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 100;
    translacao[1][0] = 0;
    
    Triangulo t4 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }
    
    t4.drawTriangulo();
    
    translacao[0][0] += 450;
    
    /*Triangulo t8 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t8.moveVertice(i, translacao);
      if (i==2)
        t8.moveVertice(i, reflexao);
    }
    
    t8.drawTriangulo();*/
    
    translacao[0][0] += 450;
    
    Triangulo t12 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t12.moveVertice(i, translacao);
      if (i==2)
        t12.moveVertice(i, reflexao);
    }
    
    t12.drawTriangulo();
  }

  private void drawQuadrado() {
    //Criando vértices do Retângulo
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(100, 350);
    verticesQuadrilatero[1] = new Vertice(200, 350);
    verticesQuadrilatero[2] = new Vertice(100, 450);
    verticesQuadrilatero[3] = new Vertice(200, 450);
    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    //Draw do quadrado com os vértices
    q1.drawQuadrilatero();
    
    for(int i=100;i<200;i++){
        stroke(0,255,0);
        line(i, 350, i, 400);
    }
    
    stroke(0,0,0);
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", verticesQuadrilatero[0].getX() + 250, (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", verticesQuadrilatero[0].getX() + 650, (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    text("→", verticesQuadrilatero[0].getX() + 1150, (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado

    float[][] translacao = {{450},{0}};

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }
    
    for(int i=150 + int(translacao[0][0]);i<200 + int(translacao[0][0]);i++){
        stroke(0,0,255);
        line(i, 350, i, 450);
    }
    
    stroke(0,0,0);
    q2.drawQuadrilatero();
    
    translacao[0][0] += 450;
    
    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }
    
    for(int i=100 + int(translacao[0][0]);i<200 + int(translacao[0][0]);i++){
        stroke(255,0,0);
        line(i, 400, i, 450);
    }
    
    stroke(0,0,0);
    q3.drawQuadrilatero();

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{300},{0}};
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(100, 825);
    verticesQuadrilatero[1] = new Vertice(150, 825);
    verticesQuadrilatero[2] = new Vertice(100, 875);
    verticesQuadrilatero[3] = new Vertice(150, 875);
    
    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);
   
    q1.drawQuadrilatero();
    
    for(int i=100; i<125; i++){
        stroke(0,255,0);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(100, 825);
    verticesTriangulo[1] = new Vertice(150, 825);
    verticesTriangulo[2] = new Vertice(125, 775);
    Triangulo t1 = new Triangulo(verticesTriangulo);

    //Draw do triângulo com os vértices
    t1.drawTriangulo();
    
    
    float[][] reflexao = {{0},{2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY())}};
    
    translacao[0][0] = 0;
    translacao[1][0] = 50;
    Triangulo t2 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.moveVertice(i, reflexao);
    }

    t2.drawTriangulo();
    
    Vertice[] verticesTrianguloH = new Vertice[3];
    verticesTrianguloH[0] = new Vertice(100, 825);
    verticesTrianguloH[1] = new Vertice(100, 875);
    verticesTrianguloH[2] = new Vertice(50, 850);
    /*Triangulo t3 = new Triangulo(verticesTrianguloH);
    
    t3.drawTriangulo();*/
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 50;
    translacao[1][0] = 0;
    
    Triangulo t4 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t4.moveVertice(i, translacao);
      if (i==2)
        t4.moveVertice(i, reflexao);
    }
    
    t4.drawTriangulo();
    
    //Segunda resposta
    
    translacao[0][0] = 300;
    translacao[1][0] = 0;
    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
    }
    
    q2.drawQuadrilatero();
    
    for(int i=100 + int(translacao[0][0]); i<125 + int(translacao[0][0]); i++){
        stroke(255,0,0);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    /*Triangulo t5 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t5.moveVertice(i, translacao);
    }
    
    t5.drawTriangulo();*/
    
    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    translacao[1][0] = 50;
    Triangulo t6 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t6.moveVertice(i, translacao);
      if (i==2)
        t6.moveVertice(i, reflexao);
    }
    
    t6.drawTriangulo();
    
    translacao[0][0] = 300;
    translacao[1][0] = 0;
    
    Triangulo t7 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t7.moveVertice(i, translacao);
    }
    
    t7.drawTriangulo();
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 350;
    translacao[1][0] = 0;
    
    Triangulo t8 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t8.moveVertice(i, translacao);
      if (i==2)
        t8.moveVertice(i, reflexao);
    }
    
    t8.drawTriangulo();
    
    //Terceira resposta
    translacao[1][0] = 0;
    translacao[0][0] = 600;
    Quadrilatero q3 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q3.moveVertice(i, translacao);
    }
    
    q3.drawQuadrilatero();
    
    for(int i=100 + int(translacao[0][0]); i<125 + int(translacao[0][0]); i++){
        stroke(0,0,255);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    Triangulo t9 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t9.moveVertice(i, translacao);
    }
    
    t9.drawTriangulo();
    
    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    translacao[1][0] = 50;
    Triangulo t10 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t10.moveVertice(i, translacao);
      if (i==2)
        t10.moveVertice(i, reflexao);
    }
    
    t10.drawTriangulo();
    
    translacao[0][0] = 600;
    translacao[1][0] = 0;
    
    Triangulo t11 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t11.moveVertice(i, translacao);
    }
    
    t11.drawTriangulo();
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 650;
    translacao[1][0] = 0;
    
    /*Triangulo t12 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t12.moveVertice(i, translacao);
      if (i==2)
        t12.moveVertice(i, reflexao);
    }
    
    t12.drawTriangulo();*/
    
    //Quarta resposta
    translacao[1][0] = 0;
    translacao[0][0] = 900;
    Quadrilatero q4 = new Quadrilatero(verticesQuadrilatero);
   
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q4.moveVertice(i, translacao);
    }
    
    q4.drawQuadrilatero();
    
    for(int i=100 + int(translacao[0][0]); i<125 + int(translacao[0][0]); i++){
        stroke(255,0,255);
        line(i, 825, i, 875);
    }
    stroke(0,0,0);
    
    Triangulo t13 = new Triangulo(verticesTriangulo);
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t13.moveVertice(i, translacao);
    }
    
    t13.drawTriangulo();
    
    translacao[1][0] = 50;
    
    Triangulo t14 = new Triangulo(verticesTriangulo);

    reflexao[0][0] = 0;
    reflexao[1][0] = 2*(verticesTriangulo[0].getY() - verticesTriangulo[2].getY());
    
    for (int i = 0; i < verticesTriangulo.length; i++){
      t14.moveVertice(i, translacao);
      if (i==2)
        t14.moveVertice(i, reflexao);
    }
    
    t14.drawTriangulo();
    
    translacao[0][0] = 900;
    translacao[1][0] = 0;
    
    /*Triangulo t15 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t15.moveVertice(i, translacao);
    }
    
    t15.drawTriangulo();*/
    
    reflexao[0][0] = 2*(verticesTrianguloH[0].getX() - verticesTrianguloH[2].getX());
    reflexao[1][0] = 0;
    translacao[0][0] = 950;
    translacao[1][0] = 0;
    
    Triangulo t16 = new Triangulo(verticesTrianguloH);
    
    for (int i = 0; i < verticesTrianguloH.length; i++){
      t16.moveVertice(i, translacao);
      if (i==2)
        t16.moveVertice(i, reflexao);
    }
    
    t16.drawTriangulo();
  }

}
