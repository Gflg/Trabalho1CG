int transicao=0;
int cor=0;

class Vertice{
  int x;
  int y;
  
  public Vertice(int x, int y){
    this.x = x;
    this.y = y;
  }
}

void criarTriangulos(){
  //Criando os vértices do Triângulo
  Vertice v1Triangulo = new Vertice(400, 200);
  Vertice v2Triangulo = new Vertice(500, 200);
  Vertice v3Triangulo = new Vertice(450, 100);
  
  //As próximas coisas criadas serão pintadas de vermelho
  fill(255, 0, 0);
  
  //Criar o triângulo com os vértices
  triangle(v1Triangulo.x, v1Triangulo.y, v2Triangulo.x, v2Triangulo.y, v3Triangulo.x, v3Triangulo.y);
  
  //As próximas coisas criadas serão pintadas de preto
  fill(0, 0, 0);
  
  //Fonte do texto
  textSize(40);
  text("→", v1Triangulo.x + 200, (v2Triangulo.y+v3Triangulo.y)/2); //Posição inicial do texto x e y
  
  //Translação no eixo x e aumento de escala no y do vertice 3 para aumentar a altura do triângulo
  fill(0, 0, 255);
  triangle(v1Triangulo.x + 350, v1Triangulo.y, v2Triangulo.x + 350, v2Triangulo.y, v3Triangulo.x + 350, v3Triangulo.y - 50);
}

void criarRetangulos(){
  //Criando vértices do Retângulo
  Vertice v1Retangulo = new Vertice(400, 350);
  Vertice v2Retangulo = new Vertice(500, 350);
  Vertice v3Retangulo = new Vertice(400, 450);
  Vertice v4Retangulo = new Vertice(500, 450);
  
  //As próximas coisas serão pintadas de verde
  fill(0, 255, 0);
  //Olhar a documentação da função rect: https://processing.org/reference/rect_.html
  //Quadrado criado abaixo
  rect(v1Retangulo.x, v1Retangulo.y, v2Retangulo.x - v1Retangulo.x, v4Retangulo.y - v2Retangulo.y);
  
  //Fonte do texto
  fill(0, 0, 0);
  textSize(40);
  text("→", v1Retangulo.x + 200, (v2Retangulo.y+v3Retangulo.y)/2); //Posição inicial do texto x e y
  
  //Translação no eixo x e aumento de escala no y para aumentar a altura do quadrado
  fill(255, 0, 0);
  rect(v1Retangulo.x + 350, v1Retangulo.y - 50, v2Retangulo.x - v1Retangulo.x, (v4Retangulo.y - v2Retangulo.y) + 50);
}

void criarCirculo(){
  //Definindo raios e centro da elipse/circulo
  Vertice centro = new Vertice(450, 650);
  int raioHorizontal = 100;
  int raioVertical = 100;
  
  //As próximas coisas serão pintadas de azul
  fill(0, 0, 255);
  //Olhar a documentação da função ellipse: https://processing.org/reference/ellipse_.html
  //Circulo criado abaixo
  ellipse(centro.x, centro.y, raioHorizontal, raioVertical);
  
  //Fonte do texto
  fill(0, 0, 0);
  textSize(40);
  text("→", centro.x + 150, centro.y); //Posição inicial do texto x e y
  text("?", centro.x + 350, centro.y);
}

void criarRespostas(){
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
  ellipse(centro.x, centro.y, raioHorizontal, raioVertical);
  
  fill(0, 255, 0);
  ellipse(centro.x + 300, centro.y, raioHorizontal + 50, raioVertical + 50);
  
  fill(0, 255, 0);
  ellipse(centro.x + 600, centro.y, raioHorizontal, raioVertical + 50);
  
  fill(0, 0, 255);
  ellipse(centro.x + 900, centro.y, raioHorizontal + 50, raioVertical);
}

void criarTela(){
  criarTriangulos();
  criarRetangulos();
  criarCirculo();
  criarRespostas();
}

void setup(){
  size(1300,1000);
  background(255);
}

void draw(){
  //fazer o cross fade da tela se uma opção for escolhida
  if (transicao == 1){
    background(cor);
    cor+=5;
    if(cor > 255)
      transicao=0;
  }
  else{
    criarTela();
    //Pintar as opções de resposta com a cor preto
    if(mouseX >= 225 && mouseX <= 275 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(225, 775, 50, 50);
      if(mousePressed){
        transicao=1;
        cor=0;
      }
    }
    else if (mouseX >= 550 && mouseX <= 600 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(550, 775, 50, 50);
      if(mousePressed){
        transicao=1;
        cor=0;
      }
    }
    else if (mouseX >= 825 && mouseX <= 875 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(825, 775, 50, 50);
      if(mousePressed){
        transicao=1;
        cor=0;
      }
    }
    else if (mouseX >= 1150 && mouseX <= 1200 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(1150, 775, 50, 50);
      if(mousePressed){
        transicao=1;
        cor=0;
      }
    }
  }
}
