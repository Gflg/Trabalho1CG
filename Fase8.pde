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
    float[][] translacao = {{600},{0}};
    //Criando os vértices do Triângulo
    Vertice[] verticesSeta = new Vertice[7];
    verticesSeta[0] = new Vertice(0, 0);
    verticesSeta[1] = new Vertice(0, 50);
    verticesSeta[2] = new Vertice(50, 0);
    verticesSeta[3] = new Vertice(50, 50);
    verticesSeta[4] = new Vertice(-50, 50);
    verticesSeta[5] = new Vertice(100, 50);
    verticesSeta[6] = new Vertice(25, 100);
    Seta s1 = new Seta(verticesSeta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesSeta.length; i++){
      s1.moveVertice(i, translacao);
    }
    
    s1.drawSeta();
    
    Seta s2 = new Seta(verticesSeta);
    
    translacao[1][0] += 175;
    
    for (int i = 0; i < verticesSeta.length; i++){
      s2.moveVertice(i, translacao);
    }
    
    s2.drawSeta();
    
    Seta s3 = new Seta(verticesSeta);
    
    translacao[1][0] += 175;
    
    for (int i = 0; i < verticesSeta.length; i++){
      s3.moveVertice(i, translacao);
    }
    
    s3.drawSeta();
    
    Seta s4 = new Seta(verticesSeta);
    
    translacao[1][0] += 175;
    
    for (int i = 0; i < verticesSeta.length; i++){
      s4.moveVertice(i, translacao);
    }
    
    s4.drawSeta();
  }

  private void drawTriangulo() {
    float[][] translacao = {{615},{10}};
    float[][] reflexaoY = {{1,0},{0,-1}};
    float[][] reflexaoX = {{-1,0},{0,1}};
    //Criando os vértices do Triângulo
    Vertice[] verticesT = new Vertice[3];
    verticesT[0] = new Vertice(0, 0);
    verticesT[1] = new Vertice(20, 0);
    verticesT[2] = new Vertice(0, 20);
    Triangulo l1 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesT.length; i++){
      l1.moveVertice(i, translacao);
    }
    
    l1.drawTriangulo();
    
    Triangulo l13 = new Triangulo(verticesT);
    translacao[0][0] += 20;
    translacao[1][0] += 20;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l13.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l13.transformaVertice(i, reflexaoY);
      }
      l13.moveVertice(i, translacao);
    }
    
    l13.drawTriangulo();
    
    Triangulo l14 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l14.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l14.transformaVertice(i, reflexaoY);
      }
      l14.moveVertice(i, translacao);
    }
    
    l14.drawTriangulo();
    
    Triangulo l15 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l15.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l15.transformaVertice(i, reflexaoY);
      }
      l15.moveVertice(i, translacao);
    }
    
    l15.drawTriangulo();
    
    Triangulo l16 = new Triangulo(verticesT);
    translacao[1][0] += 115;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l16.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l16.transformaVertice(i, reflexaoY);
      }
      l16.moveVertice(i, translacao);
    }
    
    l16.drawTriangulo();
    
    Triangulo l17 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l17.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l17.transformaVertice(i, reflexaoY);
      }
      l17.moveVertice(i, translacao);
    }
    
    l17.drawTriangulo();
    
    Triangulo l18 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l18.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l18.transformaVertice(i, reflexaoY);
      }
      l18.moveVertice(i, translacao);
    }
    
    l18.drawTriangulo();
    
    Triangulo l19 = new Triangulo(verticesT);
    translacao[1][0] += 115;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l19.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l19.transformaVertice(i, reflexaoY);
      }
      l19.moveVertice(i, translacao);
    }
    
    l19.drawTriangulo();
    
    Triangulo l20 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l20.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l20.transformaVertice(i, reflexaoY);
      }
      l20.moveVertice(i, translacao);
    }
    
    l20.drawTriangulo();
    
    Triangulo l23 = new Triangulo(verticesT);
    translacao[1][0] += 175;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l23.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l23.transformaVertice(i, reflexaoY);
      }
      l23.moveVertice(i, translacao);
    }
    
    l23.drawTriangulo();
    
    translacao[0][0] -= 20;
    
    
    Triangulo l2 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] = 40;
    for (int i = 0; i < verticesT.length; i++){
      l2.moveVertice(i, translacao);
    }
    
    l2.drawTriangulo();
    
    Triangulo l5 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l5.moveVertice(i, translacao);
    }
    
    l5.drawTriangulo();
    
    Triangulo l8 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l8.moveVertice(i, translacao);
    }
    
    l8.drawTriangulo();
    
    Triangulo l11 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l11.moveVertice(i, translacao);
    }
    
    l11.drawTriangulo();
    
    Triangulo l3 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] = 70;
    for (int i = 0; i < verticesT.length; i++){
      l3.moveVertice(i, translacao);
    }
    
    l3.drawTriangulo();
    
    Triangulo l6 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l6.moveVertice(i, translacao);
    }
    
    l6.drawTriangulo();
    
    Triangulo l9 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l9.moveVertice(i, translacao);
    }
    
    l9.drawTriangulo();
    
    Triangulo l12 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 175;
    for (int i = 0; i < verticesT.length; i++){
      l12.moveVertice(i, translacao);
    }
    
    l12.drawTriangulo();
    

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{100},{800}};
    float[][] reflexaoY = {{1,0},{0,-1}};
    float[][] reflexaoX = {{-1,0},{0,1}};
    //Criando os vértices do Triângulo
    Vertice[] verticesT = new Vertice[3];
    verticesT[0] = new Vertice(0, 0);
    verticesT[1] = new Vertice(20, 0);
    verticesT[2] = new Vertice(0, 20);
    Vertice[] verticesSeta = new Vertice[7];
    verticesSeta[0] = new Vertice(0, 0);
    verticesSeta[1] = new Vertice(0, 50);
    verticesSeta[2] = new Vertice(50, 0);
    verticesSeta[3] = new Vertice(50, 50);
    verticesSeta[4] = new Vertice(-50, 50);
    verticesSeta[5] = new Vertice(100, 50);
    verticesSeta[6] = new Vertice(25, 100);
    Seta s1 = new Seta(verticesSeta);
    
    for (int i = 0; i < verticesSeta.length; i++){
      s1.moveVertice(i, translacao);
    }
    
    s1.drawSeta();
    
    Triangulo l13 = new Triangulo(verticesT);
    translacao[0][0] += 35;
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l13.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l13.transformaVertice(i, reflexaoY);
      }
      l13.moveVertice(i, translacao);
    }
    
    l13.drawTriangulo();
    
    translacao[1][0] += 30;
    
    Triangulo l15 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l15.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l15.transformaVertice(i, reflexaoY);
      }
      l15.moveVertice(i, translacao);
    }
    
    l15.drawTriangulo();
    
    translacao[0][0] += 300;
    translacao[1][0] = 830;
    
    Triangulo l17 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l17.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l17.transformaVertice(i, reflexaoY);
      }
      l17.moveVertice(i, translacao);
    }
    
    l17.drawTriangulo();
    
    Triangulo l18 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l18.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l18.transformaVertice(i, reflexaoY);
      }
      l18.moveVertice(i, translacao);
    }
    
    l18.drawTriangulo();

    translacao[0][0] += 300;
    translacao[1][0] = 830;
    //Draw do triângulo com os vértices
    
    translacao[1][0] += 30;
    
    Triangulo l21 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l21.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l21.transformaVertice(i, reflexaoY);
      }
      l21.moveVertice(i, translacao);
    }
    
    l21.drawTriangulo();
    
    translacao[0][0] += 300;
    translacao[1][0] = 830;
    
    Triangulo l23 = new Triangulo(verticesT);
    translacao[1][0] += 30;
    //Draw do triângulo com os vértices
    for (int i = 0; i < verticesT.length; i++){
      if(i==1){
        l23.transformaVertice(i, reflexaoX);
      }
      else if(i==2){
        l23.transformaVertice(i, reflexaoY);
      }
      l23.moveVertice(i, translacao);
    }
    
    l23.drawTriangulo();
    
    Triangulo l1 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] = 810;
    translacao[0][0] = 115;
    for (int i = 0; i < verticesT.length; i++){
      l1.moveVertice(i, translacao);
    }
    
    l1.drawTriangulo();
    
    Triangulo l11 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    for (int i = 0; i < verticesT.length; i++){
      l11.moveVertice(i, translacao);
    }
    
    l11.drawTriangulo();
    
    Triangulo l12 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    for (int i = 0; i < verticesT.length; i++){
      l12.moveVertice(i, translacao);
    }
    
    l12.drawTriangulo();
    
    Triangulo l2 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] = 810;
    translacao[0][0] += 300;
    for (int i = 0; i < verticesT.length; i++){
      l2.moveVertice(i, translacao);
    }
    
    l2.drawTriangulo();
    
    Triangulo l3 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    for (int i = 0; i < verticesT.length; i++){
      l3.moveVertice(i, translacao);
    }
    
    l3.drawTriangulo();
    
    translacao[1][0] += 30;
    
    Triangulo l5 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] = 810;
    translacao[0][0] += 300;
    for (int i = 0; i < verticesT.length; i++){
      l5.moveVertice(i, translacao);
    }
    
    l5.drawTriangulo();
    
    Triangulo l6 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    for (int i = 0; i < verticesT.length; i++){
      l6.moveVertice(i, translacao);
    }
    
    l6.drawTriangulo();

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    

    //Draw do triângulo com os vértices
    translacao[1][0] = 810;
    translacao[0][0] += 300;
    
    Triangulo l9 = new Triangulo(verticesT);

    //Draw do triângulo com os vértices
    translacao[1][0] += 30;
    for (int i = 0; i < verticesT.length; i++){
      l9.moveVertice(i, translacao);
    }
    
    l9.drawTriangulo();
    
    //Segunda resposta com a seta
    translacao[0][0] = 400;
    translacao[1][0] = 800;
    
    Seta s2 = new Seta(verticesSeta);
    
    for (int i = 0; i < verticesSeta.length; i++){
      s2.moveVertice(i, translacao);
    }
    
    s2.drawSeta();
    
    //Terceira resposta com a seta
    translacao[0][0] += 300;
    
    Seta s3 = new Seta(verticesSeta);
    
    for (int i = 0; i < verticesSeta.length; i++){
      s3.moveVertice(i, translacao);
    }
    
    s3.drawSeta();
    
    //Quarta resposta com a seta
    
    translacao[0][0] += 300;
    
    Seta s4 = new Seta(verticesSeta);
    
    for (int i = 0; i < verticesSeta.length; i++){
      s4.moveVertice(i, translacao);
    }
    
    s4.drawSeta();
  }

}
