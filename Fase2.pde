public class Fase2 extends Tela {
  
  public Fase2() {
    // Parametro para construtor da super classe é o numero da resposta
     super(4); 
  }
    
  public void drawTela() {
    drawRetangulos();
    drawRespostas();
  }
  
  private void drawRetangulos() {
    //Criando vértices do Retângulo
    Vertice v1Retangulo = new Vertice(550, 0);
    Vertice v2Retangulo = new Vertice(650, 0);
    Vertice v3Retangulo = new Vertice(550, 100);
    Vertice v4Retangulo = new Vertice(650, 100);
    
    //As próximas coisas serão pintadas de verde
    fill(255,192,203);
    //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
    //Quadrado criado abaixo
    rect(v1Retangulo.getX(), v1Retangulo.getY(), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    rect(v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()), v1Retangulo.getY(), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    
    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("P", v1Retangulo.getX() + 35, v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    text("7", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    
    text("↓", v1Retangulo.getX() + 90, v4Retangulo.getY() - v2Retangulo.getY() + 60); //Posição inicial do texto x e y
    
    fill(255,0,0);
    rect(v1Retangulo.getX(), v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY()), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    rect(v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()), v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY()), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    
    fill(0,0,0);
    text("R", v1Retangulo.getX() + 35, (v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    text("5", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, (v1Retangulo.getY() + 2*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    
    text("↓", v1Retangulo.getX() + 90, 2*(v4Retangulo.getY() - v2Retangulo.getY()) + 160); //Posição inicial do texto x e y
    
    textSize(60);
    text("?", v1Retangulo.getX() + 90, 3*(v4Retangulo.getY() - v2Retangulo.getY()) + 160); //Posição inicial do texto x e y
   
    textSize(40);
    text("↓", v1Retangulo.getX() + 90, 4*(v4Retangulo.getY() - v2Retangulo.getY()) + 160); //Posição inicial do texto x e y
    
    fill(139,0,255);
    rect(v1Retangulo.getX(), v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY()), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    rect(v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()), v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY()), v2Retangulo.getX() - v1Retangulo.getX(), v4Retangulo.getY() - v2Retangulo.getY());
    
    fill(0,0,0);
    text("V", v1Retangulo.getX() + 35, (v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    text("1", v1Retangulo.getX() + (v2Retangulo.getX() - v1Retangulo.getX()) + 35, (v1Retangulo.getY() + 6*(v4Retangulo.getY() - v2Retangulo.getY())) + 60); //Posição inicial do texto x e y
    
    text("↓", v1Retangulo.getX() + 90, 27*v2Retangulo.getY()); //Posição inicial do texto x e y
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
  
  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
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
