public class Fase1 extends Tela {
  
  public Fase1() {
    // Parametro para construtor da super classe é o numero da resposta
     super(3); 
  }
    
  public void drawTela() {
    drawTriangulos();
    drawRetangulos();
    drawCirculo();
    drawRespostas();
  }
  
  private void drawTriangulos() {
    //Criando os vértices do Triângulo
    Vertice v1Triangulo = new Vertice(400, 200);
    Vertice v2Triangulo = new Vertice(500, 200);
    Vertice v3Triangulo = new Vertice(450, 100);
    
    //As próximas coisas criadas serão pintadas de vermelho
    fill(255, 0, 0);
    
    //draw o triângulo com os vértices
    triangle(v1Triangulo.getX(), v1Triangulo.getY(), v2Triangulo.getX(), v2Triangulo.getY(), v3Triangulo.getX(), v3Triangulo.getY());
    
    //As próximas coisas criadas serão pintadas de preto
    fill(0, 0, 0);
    
    //Fonte do texto
    textSize(40);
    text("→", v1Triangulo.getX() + 200, (v2Triangulo.getY()+v3Triangulo.getY())/2); //Posição inicial do texto x e y
    
    //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo
    fill(0, 0, 255);
    triangle(v1Triangulo.getX() + 350, v1Triangulo.getY(), v2Triangulo.getX() + 350, v2Triangulo.getY(), v3Triangulo.getX() + 350, v3Triangulo.getY() - 50);
  }
  
  private void drawRetangulos() {
    //Criando vértices do Retângulo
    Vertice v1Retangulo = new Vertice(400, 350);
    Vertice v2Retangulo = new Vertice(500, 350);
    Vertice v3Retangulo = new Vertice(400, 450);
    Vertice v4Retangulo = new Vertice(500, 450);
    
    //As próximas coisas serão pintadas de verde
    fill(0, 255, 0);
    //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
    //Quadrado criado abaixo
    rect(v1Retangulo.getX(), v1Retangulo.getY(), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", v1Retangulo.getX() + 200, (v2Retangulo.getY()+v3Retangulo.getY())/2); //Posição inicial do texto x e y
    
    //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado
    fill(255, 0, 0);
    rect(v1Retangulo.getX() + 350, v1Retangulo.getY() - 50, v2Retangulo.getX() - v1Retangulo.getX(), (v4Retangulo.getY() - v2Retangulo.getY()) + 50);
  }
  
  private void drawCirculo() {
    //Definindo raios e centro da elipse/circulo
    Vertice centro = new Vertice(450, 650);
    int raioHorizontal = 100;
    int raioVertical = 100;
    
    //As próximas coisas serão pintadas de azul
    fill(0, 0, 255);
    //Olhar a documentação da função ellipse: https://processing.org/reference/ellipse_.html
    //Circulo criado abaixo
    ellipse(centro.getX(), centro.getY(), raioHorizontal, raioVertical);
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", centro.getX() + 150, centro.getY()); //Posição inicial do texto x e y
    text("?", centro.getX() + 350, centro.getY());
  }
  
  private void drawRespostas() {
    //Definindo raios e centro da elipse/circulo
    Vertice centro = new Vertice(150, 850);
    int raioHorizontal = 100;
    int raioVertical = 100;
    
    fill(100, 100, 100);
    rect(25, 750, 1225, 200);
    
    fill(25, 255, 255);
    rect(225, 775, 50, 50);
    rect(550, 775, 50, 50);
    rect(825, 775, 50, 50);
    rect(1150, 775, 50, 50);
    
    //As próximas coisas serão pintadas de azul
    fill(255, 0, 0);
    //Olhar a documentação da função ellipse: https://processing.org/reference/ellipse_.html
    //Circulo criado abaixo
    ellipse(centro.getX(), centro.getY(), raioHorizontal, raioVertical);
    
    fill(0, 255, 0);
    ellipse(centro.getX() + 300, centro.getY(), raioHorizontal + 50, raioVertical + 50);
    
    fill(0, 255, 0);
    ellipse(centro.getX() + 600, centro.getY(), raioHorizontal, raioVertical + 50);
    
    fill(0, 0, 255);
    ellipse(centro.getX() + 900, centro.getY(), raioHorizontal + 50, raioVertical);
  }

}
