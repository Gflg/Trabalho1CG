public class Fase1 extends Tela {

  public Fase1() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawTriangulo();
    drawRetangulo();
    drawLosango();
    drawRespostas();
  }

  private void drawTriangulo() {
    float[][] translacao = {{200},{200}};
    //Criando os vértices do Triângulo
    
    Vertice[] verticesTriangulo = new Vertice[3];
    verticesTriangulo[0] = new Vertice(200, 0);
    verticesTriangulo[1] = new Vertice(300, 0);
    verticesTriangulo[2] = new Vertice(250, -100);
    Triangulo t1 = new Triangulo(verticesTriangulo);

    float[][] escala = {{1,0},{0,0.7}};

    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);

    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesTriangulo.length; i++){
      t1.moveVertice(i, translacao);
    }
    t1.drawTriangulo();

    //As próximas coisas criadas serão pintadas de preto
    fill(0, 0, 0);

    //Fonte do texto
    textSize(40);
    text("→", verticesTriangulo[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesTriangulo[1].getY() + verticesTriangulo[2].getY()) / 2); //Posição inicial do texto x e y

    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo

    stroke(0, 0, 255);

    translacao[0][0] += 350;

    Triangulo t2 = new Triangulo(verticesTriangulo);

    for (int i = 0; i < verticesTriangulo.length; i++){
      t2.moveVertice(i, translacao);
      if (i == 2)
        t2.transformaVertice(i, escala);
    }

    t2.drawTriangulo();

  }

  private void drawRetangulo() {
    float[][] translacao = {{400},{350}};
    //Criando vértices do Retângulo
    Vertice[] verticesQuadrilatero = new Vertice[4];
    verticesQuadrilatero[0] = new Vertice(0, 0);
    verticesQuadrilatero[1] = new Vertice(100, 0);
    verticesQuadrilatero[2] = new Vertice(0, 100);
    verticesQuadrilatero[3] = new Vertice(100, 100);
    Quadrilatero q1 = new Quadrilatero(verticesQuadrilatero);

    float[][] escala = {{1,0},{0,0.75}};

    //As próximas coisas serão pintadas de verde
    stroke(0, 180, 0);

    //Draw do quadrado com os vértices
    
    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q1.moveVertice(i, translacao);
    }
    q1.drawQuadrilatero();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", verticesQuadrilatero[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesQuadrilatero[1].getY() + verticesQuadrilatero[2].getY()) / 2); //Posição inicial do texto x e y

    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado

    stroke(255, 0, 0);

    translacao[0][0] += 350;

    Quadrilatero q2 = new Quadrilatero(verticesQuadrilatero);

    for (int i = 0; i < verticesQuadrilatero.length; i++){
      q2.moveVertice(i, translacao);
      if (i < 2)
        q2.transformaVertice(i, escala);
    }

    q2.drawQuadrilatero();

  }

  private void drawLosango() {
    float[][] translacao = {{400},{550}};
    //Criando vértices do Losango
    Vertice[] verticesQuadrilatero2 = new Vertice[4];
    verticesQuadrilatero2[0] = new Vertice(0, 0);
    verticesQuadrilatero2[1] = new Vertice(100, 0);
    verticesQuadrilatero2[2] = new Vertice(-50, 150);
    verticesQuadrilatero2[3] = new Vertice(150, 150);

    Quadrilatero l1 = new Quadrilatero(verticesQuadrilatero2);

    //As próximas coisas serão pintadas de azul
    stroke(0, 0, 255);

    //Draw do losango com os vértices
    for (int i = 0; i < verticesQuadrilatero2.length; i++){
      l1.moveVertice(i, translacao);
    }
    l1.drawQuadrilatero();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", verticesQuadrilatero2[0].getX() + 200 + translacao[0][0], translacao[1][0] + (verticesQuadrilatero2[1].getY() + verticesQuadrilatero2[2].getY() ) / 2); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    float[][] translacao = {{80},{840}};


    Vertice[] verticesQuadrilatero3 = new Vertice[4];
    verticesQuadrilatero3[0] = new Vertice(0, 0);
    verticesQuadrilatero3[1] = new Vertice(100, 0);
    verticesQuadrilatero3[2] = new Vertice(-50, 100);
    verticesQuadrilatero3[3] = new Vertice(150, 100);

    Quadrilatero l1 = new Quadrilatero(verticesQuadrilatero3);
    float[][] escalaCerta = {{1,0},{0,0.9}};
    float[][] escalaErrada = {{0.9,0},{0,1}};
    float[][] escalaErrada2 = {{1.1,0},{0,1}};

    //As próximas coisas serão pintadas de azul
    stroke(255, 0, 0);

    //Draw da resposta 1 com os vértices
    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l1.moveVertice(i, translacao);
    }
    l1.drawQuadrilatero();

    stroke(0, 180, 0);

    translacao[0][0] += 300;

    Quadrilatero l2 = new Quadrilatero(verticesQuadrilatero3);

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l2.moveVertice(i, translacao);
      if(i<2)
        l2.transformaVertice(i, escalaCerta);
      else if(i == 2)
        l2.transformaVertice(i, escalaErrada);
      else
        l2.transformaVertice(i, escalaErrada2);
    }

    //Draw da resposta 2 com os vértices
    l2.drawQuadrilatero();

    stroke(0, 180, 0);

    translacao[0][0] += 300;

    Quadrilatero l3 = new Quadrilatero(verticesQuadrilatero3);

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l3.moveVertice(i, translacao);
      if (i<2)
        l3.transformaVertice(i, escalaCerta);
    }

    //Draw da resposta 3 com os vértices
    l3.drawQuadrilatero();

    stroke(0, 0, 255);

    translacao[0][0] += 300;

    Quadrilatero l4 = new Quadrilatero(verticesQuadrilatero3);

    for (int i = 0; i < verticesQuadrilatero3.length; i++){
      l4.moveVertice(i, translacao);
      if(i==2)
        l4.transformaVertice(i, escalaErrada);
      else if(i == 3)
        l4.transformaVertice(i, escalaErrada2);
    }

    //Draw da resposta 4 com os vértices
    l4.drawQuadrilatero();

  }

}
