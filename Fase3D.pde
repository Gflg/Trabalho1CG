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

    rotacaoY[0][0] = cos(angulo);
    rotacaoY[0][2] = sin(angulo);
    rotacaoY[2][0] = -sin(angulo);
    rotacaoY[2][2] = cos(angulo);
  }
  
  public void setRotacaoX(float angulo){
    rotacaoX[1][1] = cos(angulo);
    rotacaoX[1][2] = -sin(angulo);
    rotacaoX[2][1] = sin(angulo);
    rotacaoX[2][2] = cos(angulo);
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
    //Face de trás
    float x1 = decagono1.vertices[1].getX()+6; //Esse +6 representa o ponto inicial no eixo x logo depois da aresta desenhada. 
    float x2 = decagono1.vertices[2].getX()+5; //Esse +5 representa o ponto inicial no eixo x logo depois da aresta desenhada.
    //Acredito que esses valores +6 e +5 variam conforme as diversas regiões do polígono devido às rotações que o decágono sofreu na projeção
    //Face da frente
    float x3 = decagono1.vertices[11].getX()+6;
    float x4 = decagono1.vertices[12].getX()-5;
    //Face de trás
    float altura = decagono1.vertices[1].getY();
    //Face da frente
    float altura2 = decagono1.vertices[11].getY();
    
    
    stroke(255, 255, 255);
    
    //Região formada pelos vértices 0, 1 e 2, que forma um triângulo
    while(x1 < x2){
      //Face de trás pintada primeiro seguindo o conceito do algoritmo do pintor
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      //Face da frente pintada por último seguindo o conceito do algoritmo do pintor
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      //o x inicial de cada vértice é variado por uma taxa para que consigam tudo o que está dentro das arestas dessa região
      x1+=0.5;
      x2-=1.5;
      x3+=0.5;
      x4-=1.5;
      //o y é sempre variado em 1, onde só precisei variar as taxas no eixo x
      altura--;
      altura2--;
    }
    
    x1 = decagono1.vertices[3].getX()+13;
    x2 = decagono1.vertices[4].getX()-5;
    altura = decagono1.vertices[3].getY();
    x3 = decagono1.vertices[13].getX()+13;
    x4 = decagono1.vertices[14].getX()-5;
    altura2 = decagono1.vertices[13].getY();
    
    //Região formada pelos vértices 1, 2, 3 e 4, que forma um trapézio.
    //Aqui o ponto de parada é a altura porque as coordenadas x das arestas esquerda e direita nunca vão se encontrar nessa região.
    while(altura > decagono1.vertices[1].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=0.1;
      x2-=1.1;
      x3-=0.1;
      x4-=1.1;
      altura--;
      altura2--;
    }
    
    x1 = decagono1.vertices[5].getX()+17;
    x2 = decagono1.vertices[6].getX()-1.5;
    altura = decagono1.vertices[5].getY();
    x3 = decagono1.vertices[15].getX()+17;
    x4 = decagono1.vertices[16].getX()-1.5;
    altura2 = decagono1.vertices[15].getY();
    
    //Região formada pelos vértices 3, 4, 5 e 6, que forma um quadrilátero que possui as variações iguais no eixo x, como se fosse um retângulo em itálico.
    while(altura > decagono1.vertices[3].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=0.7;
      x2-=0.7;
      x3-=0.7;
      x4-=0.7;
      altura--;
      altura2--;
    }

    x1 = decagono1.vertices[7].getX()+16;
    x2 = decagono1.vertices[8].getX()+5;
    altura = decagono1.vertices[7].getY();
    x3 = decagono1.vertices[17].getX()+16;
    x4 = decagono1.vertices[18].getX()+5;
    altura2 = decagono1.vertices[17].getY();
    
    //Região formada pelos vértices 5, 6, 7 e 8, que forma um trapézio invertido.
    while(altura > decagono1.vertices[5].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=1.1;
      x2-=0.2;
      x3-=1.1;
      x4-=0.2;
      altura--;
      altura2--;
    }
    
    x1 = decagono1.vertices[7].getX()+12;
    x2 = decagono1.vertices[8].getX()+5;
    altura = decagono1.vertices[7].getY();
    x3 = decagono1.vertices[17].getX()+12;
    x4 = decagono1.vertices[18].getX()+5;
    altura2 = decagono1.vertices[17].getY();

    //Região formada pelos vértices 7, 8 e 9, que forma um triângulo invertido.
    while(x1 < x2){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1+=2.7;
      x2-=1;
      x3+=2.7;
      x4-=1;
      altura++;
      altura2++;
    }

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
    setRotacao(PI/4); //45º no eixo y
    setRotacaoX(0.61540309); //35.36º no eixo x

    stroke(163, 16, 163);

    translacao[0][0] += 190;
    translacao[0][1] = 0;
    translacao[1][0] += 50;
    translacao[1][1] = 0;
    translacao[2][0] = 0;
    translacao[2][1] = 0;

    for (int i = 0; i < decagono2.vertices.length; i++){
      //decagono2.transformaVertice(i, rotacaoZ);
      decagono2.transformaVertice(i, rotacaoX);
      decagono2.transformaVertice(i, rotacaoY);
      decagono2.moveVertice(i, translacao);
    }

    pintaDecagono3DRotacao(decagono2);
    
    decagono2.drawFigura();

    fill(0, 0, 0);

  }

}
