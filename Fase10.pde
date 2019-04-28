public class Fase10 extends Tela {
  float[][] cisalhamentoX = new float[2][2];
  float[][] cisalhamentoY = new float[2][2];
  
  public Fase10() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
    setCisalhamentoX(0.7);
    setCisalhamentoY(0.7);
  }
  
  public void setCisalhamentoX(float k){
    cisalhamentoX[0][0] = 1;
    cisalhamentoX[0][1] = k;
    cisalhamentoX[1][0] = 0;
    cisalhamentoX[1][1] = 1;
  }
  
  public void setCisalhamentoY(float k){
    cisalhamentoY[0][0] = 1;
    cisalhamentoY[0][1] = 0;
    cisalhamentoY[1][0] = k;
    cisalhamentoY[1][1] = 1;
  }
  
  public void drawTela() {
    drawAmpulheta();
    drawRespostas();
  }

  private void drawAmpulheta() {
    float[][] translacao = {{600},{100}};
    //Criando os vértices do Triângulo
    Vertice[] verticesAmpulheta = new Vertice[5];
    verticesAmpulheta[0] = new Vertice(0, 0);
    verticesAmpulheta[1] = new Vertice(-25, -50);
    verticesAmpulheta[2] = new Vertice(25, -50);
    verticesAmpulheta[3] = new Vertice(25, 50);
    verticesAmpulheta[4] = new Vertice(-25, 50);
    Ampulheta a1 = new Ampulheta(verticesAmpulheta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a1.moveVertice(i, translacao);
    }
    
    a1.drawAmpulheta();
    
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));
    
    translacao[0][0] += 250;
    
    Ampulheta a5 = new Ampulheta(verticesAmpulheta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a5.moveVertice(i, translacao);
    }
    
    a5.drawAmpulheta();
    
    translacao[0][0] -= 250;
    translacao[1][0] += 250;
    
    Ampulheta a2 = new Ampulheta(verticesAmpulheta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a2.transformaVertice(i, cisalhamentoY);
      a2.moveVertice(i, translacao);
    }
    
    a2.drawAmpulheta();
    
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));
    
    translacao[0][0] += 250;
    
    Ampulheta a3 = new Ampulheta(verticesAmpulheta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a3.transformaVertice(i, cisalhamentoY);
      a3.transformaVertice(i, cisalhamentoY);
      a3.moveVertice(i, translacao);
    }
    
    a3.drawAmpulheta();
    
    translacao[0][0] -= 250;
    translacao[1][0] += 250;
    Ampulheta a4 = new Ampulheta(verticesAmpulheta);

    //Draw do triângulo com os vértices
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a4.transformaVertice(i, cisalhamentoX);
      a4.moveVertice(i, translacao);
    }
    
    a4.drawAmpulheta();
    
    fill(0,0,0);
    textSize(40);
    text("→", translacao[0][0] + verticesAmpulheta[0].getX() + 125, translacao[1][0]+(verticesAmpulheta[3].getY() - verticesAmpulheta[0].getY()/2));
  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();
    
    float[][] translacao = {{displayWidth/11},{0.8*displayHeight}};
    Vertice[] verticesAmpulheta = new Vertice[5];
    verticesAmpulheta[0] = new Vertice(0, 0);
    verticesAmpulheta[1] = new Vertice(-25, -50);
    verticesAmpulheta[2] = new Vertice(25, -50);
    verticesAmpulheta[3] = new Vertice(25, 50);
    verticesAmpulheta[4] = new Vertice(-25, 50);
    
    Ampulheta a1 = new Ampulheta(verticesAmpulheta);
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a1.moveVertice(i, translacao);
    }
    
    a1.drawAmpulheta();
    
    translacao[0][0] += 300;
    translacao[1][0] -= 10;
    
    Ampulheta a2 = new Ampulheta(verticesAmpulheta);
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a2.transformaVertice(i, cisalhamentoY);
      a2.transformaVertice(i, cisalhamentoY);
      a2.transformaVertice(i, cisalhamentoY);
      a2.moveVertice(i, translacao);
    }
    
    a2.drawAmpulheta();
    
    translacao[0][0] += 300;
    translacao[1][0] += 10;
    
    Ampulheta a3 = new Ampulheta(verticesAmpulheta);
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a3.transformaVertice(i, cisalhamentoX);
      a3.transformaVertice(i, cisalhamentoX);
      a3.moveVertice(i, translacao);
    }
    
    a3.drawAmpulheta();
    
    translacao[0][0] += 300;
    translacao[1][0] -= 20;
    
    Ampulheta a4 = new Ampulheta(verticesAmpulheta);
    
    for (int i = 0; i < verticesAmpulheta.length; i++){
      a4.transformaVertice(i, cisalhamentoX);
      a4.transformaVertice(i, cisalhamentoY);
      a4.moveVertice(i, translacao);
    }
    
    a4.drawAmpulheta();
    
  }

}
