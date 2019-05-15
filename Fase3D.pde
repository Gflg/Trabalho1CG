public class Fase3D{
  float[][] rotacaoZ = {{0,0,0,0},
                        {0,0,0,0},
                        {0,0,1,0},
                        {0,0,0,1}};
  
  float[][] rotacaoX = {{1,0,0,0},
                        {0,0,0,0},
                        {0,0,0,0},
                        {0,0,0,1}};
                          
  float[][] rotacaoY = {{0,0,0,0},
                        {0,1,0,0},
                        {0,0,0,0},
                        {0,0,0,1}};
                         
  public void setRotacao(float angulo){
    rotacaoZ[0][0] = cos(angulo);
    rotacaoZ[0][1] = -sin(angulo);
    rotacaoZ[1][0] = sin(angulo);
    rotacaoZ[1][1] = cos(angulo);
    
    rotacaoX[1][1] = cos(angulo);
    rotacaoX[1][2] = -sin(angulo);
    rotacaoX[2][1] = sin(angulo);
    rotacaoX[2][2] = cos(angulo);
    
    rotacaoY[0][0] = cos(angulo);
    rotacaoY[0][2] = sin(angulo);
    rotacaoY[2][0] = -sin(angulo);
    rotacaoY[2][2] = cos(angulo);
  }
  
  public void drawTela(){
    
    float[][] translacao = new float[3][3];
    float[][] escala = new float[3][3];
    
    //Criando os vértices do Decágono 1
    Vertice pontaDoDecagono1 = new Vertice(0, 0, 0);

    Decagono3D decagono1 = new Decagono3D(pontaDoDecagono1);
    
    //Rotação = 45º porque a figura é isométrica
    setRotacao(PI/4);

    stroke(163, 16, 163);
    
    translacao[0][0] = 240;
    translacao[0][1] = 0;
    translacao[1][0] = 360;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < decagono1.vertices.length; i++){
      decagono1.transformaVertice(i, rotacaoZ);
      decagono1.transformaVertice(i, rotacaoX);
      decagono1.transformaVertice(i, rotacaoY);
      decagono1.moveVertice(i, translacao);
    }

    fill(0, 0, 0);

    Decagono decagono2 = new Decagono(pontaDoDecagono1);
    translacao[0][0] -= 80;
    translacao[1][0] -= 145;
    translacao[2][0] -= 0;

    escala[0][0] = 1.5;
    escala[0][1] = 0;
    escala[1][0] = 0;
    escala[1][1] = 1.5;
    escala[2][0] = 0;
    escala[2][1] = 0;
    
    for (int i = 0; i < decagono2.vertices.length; i++){
      /*decagono2.transformaVertice(i, rotacaoZ);
      decagono2.transformaVertice(i, rotacaoX);
      decagono2.transformaVertice(i, rotacaoY);*/
      decagono2.moveVertice(i, translacao);
      decagono2.transformaVertice(i, escala);
    }
    
    decagono1.drawFigura();
    decagono2.drawFigura();
  }
}
