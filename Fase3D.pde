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
  
  public void pintaDecagono(Decagono decagono1){
    float x1 = decagono1.vertices[0].getX() - 60;
    float x2 = decagono1.vertices[0].getX() + 60;
    float altura = decagono1.vertices[0].getY() + 60;
    
    while(altura != decagono1.vertices[0].getY() + 30){
      stroke(0, 255, 0);
      line(x1, altura, 0, x2, altura, 0);
      x1+=0.7;
      x2-=0.7;
      altura--;
    }
    
    while(altura != decagono1.vertices[0].getY()){
      stroke(0, 255, 0);
      line(x1, altura, 0, x2, altura, 0);
      x1+=1.3;
      x2-=1.3;
      altura--;
    }
    
    for(int i = (int) decagono1.vertices[0].getY() + 60; i< (int) decagono1.vertices[0].getY() + 90; i++){
        stroke(0, 255, 0);
        line(decagono1.vertices[0].getX() - 60, i, 0, decagono1.vertices[0].getX() + 60, i, 0);
    }

    altura = decagono1.vertices[0].getY() + 90;
    
    x1 = decagono1.vertices[0].getX() - 60;
    x2 = decagono1.vertices[0].getX() + 60;
    
    while(altura != decagono1.vertices[0].getY()+120){
      stroke(0, 255, 0);
      line(x1, altura, 0, x2, altura, 0);
      x1+=0.7;
      x2-=0.7;
      altura++;
    }

    while(altura != decagono1.vertices[0].getY()+130){
      stroke(0, 255, 0);
      line(x1, altura, 0, x2, altura, 0);
      x1+=4;
      x2-=4;
      altura++;
    }

    stroke(163, 16, 163);
  }
  
  public void pintaDecagono3D(Decagono3D decagono1){
    float x1 = decagono1.vertices[0].getX() - 60;
    float x2 = decagono1.vertices[0].getX() + 60;
    float altura = decagono1.vertices[0].getY() + 60;
    
    stroke(0, 255, 0);
    
    while(altura != decagono1.vertices[0].getY() + 30){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=0.7;
      x2-=0.7;
      altura--;
    }
    
    while(altura != decagono1.vertices[0].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=1.3;
      x2-=1.3;
      altura--;
    }
    
    for(int i = (int) decagono1.vertices[0].getY() + 60; i< (int) decagono1.vertices[0].getY() + 90; i++){
        line(decagono1.vertices[0].getX() - 60, i, decagono1.vertices[10].getZ(), decagono1.vertices[0].getX() + 60, i, decagono1.vertices[10].getZ());
        line(decagono1.vertices[0].getX() - 60, i, decagono1.vertices[0].getZ(), decagono1.vertices[0].getX() + 60, i, decagono1.vertices[0].getZ());
    }

    altura = decagono1.vertices[0].getY() + 90;
    
    x1 = decagono1.vertices[0].getX() - 60;
    x2 = decagono1.vertices[0].getX() + 60;
    
    while(altura != decagono1.vertices[0].getY()+120){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=0.7;
      x2-=0.7;
      altura++;
    }

    while(altura != decagono1.vertices[0].getY()+130){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=4;
      x2-=4;
      altura++;
    }

    stroke(163, 16, 163);
  }

  public void pintaDecagono3DRotacao(Decagono3D decagono1){
    float x1 = decagono1.vertices[1].getX();
    float x2 = decagono1.vertices[2].getX();
    float altura = decagono1.vertices[0].getY();
    
    print(x1 + "\n");
    print(x2 + "\n");
    print(altura + "\n");
    stroke(0, 255, 0);
    
    while(altura > decagono1.vertices[0].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      //line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=0.7;
      x2-=0.7;
      altura--;
    }
    
    /*while(altura != decagono1.vertices[0].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=1.3;
      x2-=1.3;
      altura--;
    }
    
    for(int i = (int) decagono1.vertices[0].getY() + 60; i< (int) decagono1.vertices[0].getY() + 90; i++){
         line(decagono1.vertices[0].getX() - 60, i, decagono1.vertices[10].getZ(), decagono1.vertices[0].getX() + 60, i, decagono1.vertices[10].getZ());
        line(decagono1.vertices[0].getX() - 60, i, decagono1.vertices[0].getZ(), decagono1.vertices[0].getX() + 60, i, decagono1.vertices[0].getZ());
    }

    altura = decagono1.vertices[0].getY() + 90;
    
    x1 = decagono1.vertices[0].getX() - 60;
    x2 = decagono1.vertices[0].getX() + 60;
    
    while(altura != decagono1.vertices[0].getY()+120){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=0.7;
      x2-=0.7;
      altura++;
    }

    while(altura != decagono1.vertices[0].getY()+130){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x1, altura, decagono1.vertices[10].getZ(), x2, altura, decagono1.vertices[10].getZ());
      x1+=4;
      x2-=4;
      altura++;
    }*/

    stroke(163, 16, 163);
  }

  public void drawTela(){

    float[][] translacao = new float[3][3];

    //Criando os vértices do Decágono 1
    Vertice pontaDoDecagono1 = new Vertice(0, 0, 0);

    Decagono decagono1 = new Decagono(pontaDoDecagono1);

    translacao[0][0] = 435;
    translacao[0][1] = 0;
    translacao[1][0] = 400;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < decagono1.vertices.length; i++){
      decagono1.moveVertice(i, translacao);
    }

    decagono1.drawFigura();
    
    pintaDecagono(decagono1);
    
    Decagono3D decagono3 = new Decagono3D(pontaDoDecagono1);

    translacao[0][0] += 200;

    for (int i = 0; i < decagono3.vertices.length; i++){
      decagono3.moveVertice(i, translacao);
    }

    decagono3.drawFigura();

    pintaDecagono3D(decagono3);

    Decagono3D decagono2 = new Decagono3D(pontaDoDecagono1);

    //Rotação = 45º porque a figura é isométrica
    setRotacao(PI/4);

    stroke(163, 16, 163);

    translacao[0][0] += 190;
    translacao[0][1] = 0;
    translacao[1][0] += 50;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < decagono2.vertices.length; i++){
      decagono2.transformaVertice(i, rotacaoZ);
      decagono2.transformaVertice(i, rotacaoX);
      decagono2.transformaVertice(i, rotacaoY);
      decagono2.moveVertice(i, translacao);
    }

    decagono2.drawFigura();

    //pintaDecagono3DRotacao(decagono2);

    fill(0, 0, 0);

  }

}
