public class Fase1 extends Tela {
  
  public Fase1() {
    // Parametro para construtor da super classe é o numero da resposta
     super(3); 
  }
    
  public void drawTela() {
    drawTriangulos();
    drawRetangulos();
    drawLosango();
    drawRespostas();
  }
  
  private void drawTriangulos() {
    //Criando os vértices do Triângulo
    Vertice v1Triangulo = new Vertice(400, 200);
    Vertice v2Triangulo = new Vertice(500, 200);
    Vertice v3Triangulo = new Vertice(450, 100);
    Triangulo t1 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    float[][] escala = {{1,0},{0,0.7}};
    
    //As próximas coisas criadas serão pintadas de vermelho
    stroke(255, 0, 0);
    
    //draw o triângulo com os vértices
    //triangle(v1Triangulo.getX(), v1Triangulo.getY(), v2Triangulo.getX(), v2Triangulo.getY(), v3Triangulo.getX(), v3Triangulo.getY());
    t1.drawTriangulo();
    
    //As próximas coisas criadas serão pintadas de preto
    fill(0, 0, 0);
    
    //Fonte do texto
    textSize(40);
    text("→", v1Triangulo.getX() + 200, (v2Triangulo.getY()+v3Triangulo.getY())/2); //Posição inicial do texto x e y
    
    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo
    stroke(0, 0, 255);
    float[][] translacao = {{350},{0}};
    Triangulo t2 = new Triangulo(v1Triangulo, v2Triangulo, v3Triangulo);
    for (int i=0; i<3; i++){
      t2.moveVertice(i, translacao);
      if (i==2)
        t2.transformaVertice(i, escala);
    }
    t2.drawTriangulo();
    //triangle(v1Triangulo.getX() + 350, v1Triangulo.getY(), v2Triangulo.getX() + 350, v2Triangulo.getY(), v3Triangulo.getX() + 350, v3Triangulo.getY() - 50);
  }
  
  private void drawRetangulos() {
    //Criando vértices do Retângulo
    Vertice v1Retangulo = new Vertice(400, 350);
    Vertice v2Retangulo = new Vertice(500, 350);
    Vertice v3Retangulo = new Vertice(400, 450);
    Vertice v4Retangulo = new Vertice(500, 450);
    Quadrilatero q1 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    float[][] escala = {{1,0},{0,0.75}};
    
    //As próximas coisas serão pintadas de verde
    stroke(0, 128, 0);
    //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
    //Quadrado criado abaixo
    q1.drawQuadrilatero();
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", v1Retangulo.getX() + 200, (v2Retangulo.getY()+v3Retangulo.getY())/2); //Posição inicial do texto x e y
    
    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado
    stroke(255, 0, 0);
    float[][] translacao = {{350},{0}};
    Quadrilatero q2 = new Quadrilatero(v1Retangulo, v2Retangulo, v3Retangulo, v4Retangulo);
    for (int i=0; i<4; i++){
      q2.moveVertice(i, translacao);
      if (i<2)
        q2.transformaVertice(i, escala);
    }
    q2.drawQuadrilatero();
  }
  
  private void drawLosango() {
    //Definindo raios e centro da elipse/circulo
    Vertice v1Losango = new Vertice(400, 550);
    Vertice v2Losango = new Vertice(500, 550);
    Vertice v3Losango = new Vertice(350, 650);
    Vertice v4Losango = new Vertice(550, 650);
    Quadrilatero l1 = new Quadrilatero(v1Losango, v2Losango, v3Losango, v4Losango);
    
    //As próximas coisas serão pintadas de azul
    stroke(0, 0, 255);
    //Olhar a documentação da função ellipse: https://processing.org/reference/ellipse_.html
    //Circulo criado abaixo
    l1.drawQuadrilatero();
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", v1Losango.getX() + 200, (v2Losango.getY()+v3Losango.getY())/2); //Posição inicial do texto x e y
    //text("?", v1Losango.getX() + 350, (v2Losango.getY()+v3Losango.getY())/2);
  }
  
  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    Vertice v1Losango = new Vertice(80, 840);
    Vertice v2Losango = new Vertice(180, 840);
    Vertice v3Losango = new Vertice(30, 940);
    Vertice v4Losango = new Vertice(230, 940);
    Quadrilatero l1 = new Quadrilatero(v1Losango, v2Losango, v3Losango, v4Losango);
    float[][] escalaCerta = {{1,0},{0,0.9}};
    float[][] escalaErrada = {{0.9,0},{0,1}};
    float[][] escalaErrada2 = {{1.1,0},{0,1}};
    //Definindo raios e centro da elipse/circulo
    Vertice centro = new Vertice(150, 850);
    int raioHorizontal = 100;
    int raioVertical = 100;
        
    //As próximas coisas serão pintadas de azul
    stroke(255, 0, 0);
    //Olhar a documentação da função ellipse: https://processing.org/reference/ellipse_.html
    //Circulo criado abaixo
    //ellipse(centro.getX(), centro.getY(), raioHorizontal, raioVertical);
    l1.drawQuadrilatero();
    
    stroke(0, 128, 0);
    float[][] translacao = {{300},{0}};
    Quadrilatero l2 = new Quadrilatero(v1Losango, v2Losango, v3Losango, v4Losango);
    for (int i=0; i<4; i++){
      l2.moveVertice(i, translacao);
      if(i<2)
        l2.transformaVertice(i, escalaCerta);
      else if(i == 2)
        l2.transformaVertice(i, escalaErrada);
      else
        l2.transformaVertice(i, escalaErrada2);
    }
    l2.drawQuadrilatero();
    //ellipse(centro.getX() + 300, centro.getY(), raioHorizontal + 50, raioVertical + 50);
    
    stroke(0, 128, 0);
    translacao[0][0] = 600;
    Quadrilatero l3 = new Quadrilatero(v1Losango, v2Losango, v3Losango, v4Losango);
    for (int i=0; i<4; i++){
      l3.moveVertice(i, translacao);
      if (i<2)
        l3.transformaVertice(i, escalaCerta);
    }
    l3.drawQuadrilatero();
    //ellipse(centro.getX() + 600, centro.getY(), raioHorizontal, raioVertical + 50);
    
    stroke(0, 0, 255);
    translacao[0][0] = 910;
    Quadrilatero l4 = new Quadrilatero(v1Losango, v2Losango, v3Losango, v4Losango);
    for (int i=0; i<4; i++){
      l4.moveVertice(i, translacao);
      if(i==2)
        l4.transformaVertice(i, escalaErrada);
      else if(i == 3)
        l4.transformaVertice(i, escalaErrada2);
    }
    l4.drawQuadrilatero();
    //ellipse(centro.getX() + 900, centro.getY(), raioHorizontal + 50, raioVertical);
  }

}
