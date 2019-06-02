public class Fase3D{
  float[] distanciasFaces = {0,0,0,0,0,0,0,0,0,0,0,0};
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

  public void pintaDecagono3DRotacao(Decagono3D decagono1){
    //Face de trás
    float x1 = decagono1.faces[0].arestas[0].vertices[0].getX()-6; //Esse +6 representa o ponto inicial no eixo x logo depois da aresta desenhada. 
    float x2 = decagono1.faces[0].arestas[1].vertices[1].getX()-5; //Esse +5 representa o ponto inicial no eixo x logo depois da aresta desenhada.
    //Acredito que esses valores +6 e +5 variam conforme as diversas regiões do polígono devido às rotações que o decágono sofreu na projeção
    //Face da frente
    float x3 = decagono1.faces[1].arestas[0].vertices[0].getX()-6;
    float x4 = decagono1.faces[1].arestas[1].vertices[1].getX()-5;
    //Face de trás
    float altura = decagono1.vertices[1].getY();
    //Face da frente
    float altura2 = decagono1.vertices[11].getY();
    
    print("X: " + decagono1.faces[0].arestas[0].vertices[1].getX() + "\n");
    print("Y: " + decagono1.faces[0].arestas[0].vertices[1].getY() + "\n");
    print("Z: " + decagono1.faces[0].arestas[0].vertices[1].getZ() + "\n");
    
    stroke(255, 255, 255);
    
    //Região formada pelos vértices 0, 1 e 2, que forma um triângulo
    while(x1 < x2){
      //Face de trás pintada primeiro seguindo o conceito do algoritmo do pintor
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      //Face da frente pintada por último seguindo o conceito do algoritmo do pintor
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      //o x inicial de cada vértice é variado por uma taxa para que consigam tudo o que está dentro das arestas dessa região
      x1+=0.2;
      x2-=1.5;
      x3+=0.2;
      x4-=1.5;
      //o y é sempre variado em 0.9, onde só precisei variar as taxas no eixo x
      altura-=0.9;
      altura2-=0.9;
    }
    
    x1 = decagono1.faces[0].arestas[2].vertices[1].getX()+13;
    x2 = decagono1.faces[0].arestas[3].vertices[1].getX()-5;
    altura = decagono1.faces[0].arestas[3].vertices[1].getY();
    x3 = decagono1.faces[1].arestas[2].vertices[1].getX()+15;
    x4 = decagono1.faces[1].arestas[3].vertices[1].getX()-5;
    altura2 = decagono1.faces[1].arestas[3].vertices[1].getY();
    
    //Região formada pelos vértices 1, 2, 3 e 4, que forma um trapézio.
    //Aqui o ponto de parada é a altura porque as coordenadas x das arestas esquerda e direita nunca vão se encontrar nessa região.
    while(altura >= decagono1.faces[0].arestas[0].vertices[1].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=0.1;
      x2-=1.1;
      x3-=0.1;
      x4-=1.1;
      altura-=0.9;
      altura2-=0.9;
    }
    
    x1 = decagono1.faces[0].arestas[4].vertices[1].getX()+17;
    x2 = decagono1.faces[0].arestas[5].vertices[1].getX()-1.5;
    altura = decagono1.faces[0].arestas[5].vertices[1].getY();
    x3 = decagono1.faces[1].arestas[4].vertices[1].getX()+19;
    x4 = decagono1.faces[1].arestas[5].vertices[1].getX()-1.5;
    altura2 = decagono1.faces[1].arestas[5].vertices[1].getY();
    
    //Região formada pelos vértices 3, 4, 5 e 6, que forma um quadrilátero que possui as variações iguais no eixo x, como se fosse um retângulo em itálico.
    while(altura > decagono1.faces[0].arestas[2].vertices[1].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=0.7;
      x2-=0.7;
      x3-=0.7;
      x4-=0.7;
      altura-=0.9;
      altura2-=0.9;
    }

    x1 = decagono1.faces[0].arestas[6].vertices[1].getX()+16;
    x2 = decagono1.faces[0].arestas[7].vertices[1].getX()+5;
    altura = decagono1.faces[0].arestas[7].vertices[1].getY();
    x3 = decagono1.faces[1].arestas[6].vertices[1].getX()+18;
    x4 = decagono1.faces[1].arestas[7].vertices[1].getX()+5;
    altura2 = decagono1.faces[1].arestas[7].vertices[1].getY();
    
    //Região formada pelos vértices 5, 6, 7 e 8, que forma um trapézio invertido.
    while(altura > decagono1.faces[0].arestas[4].vertices[1].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1-=1.1;
      x2-=0.2;
      x3-=1.1;
      x4-=0.2;
      altura-=0.9;
      altura2-=0.9;
    }
    
    x1 = decagono1.faces[0].arestas[6].vertices[1].getX()+12;
    x2 = decagono1.faces[0].arestas[7].vertices[1].getX()+5;
    altura = decagono1.faces[0].arestas[6].vertices[1].getY();
    x3 = decagono1.faces[1].arestas[6].vertices[1].getX()+18;
    x4 = decagono1.faces[1].arestas[7].vertices[1].getX()+6;
    altura2 = decagono1.faces[1].arestas[7].vertices[1].getY();

    //Região formada pelos vértices 7, 8 e 9, que forma um triângulo invertido.
    while(x1 < x2 && altura <= decagono1.faces[0].arestas[8].vertices[1].getY()){
      line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
      line(x3, altura2, decagono1.vertices[10].getZ(), x4, altura2, decagono1.vertices[10].getZ());
      x1+=2.7;
      x2-=1;
      x3+=2.7;
      x4-=1;
      altura+=0.9;
      altura2+=0.9;
    }

    stroke(163, 16, 163);
  }

  public void calculaDistanciaFaces(Decagono3D decagono, float observadorX, float observadorY, float observadorZ){
    float[] aux = new float[3];
    for(int i=0; i<decagono.qtdFaces(); i++){
      if(i==0 || i==1)
        aux = decagono.faces[i].getDistanciaMediaDecagonoFaces0e1(observadorX, observadorY, observadorZ);
      else{
        aux[0] = 0;
        aux[1] = 0;
        aux[2] = 0;
        //Substituir essas linhas acima pela chamada da função das faces laterais
      }
      for(int j=0; j<3; j++)
          distanciasFaces[i] += aux[j];
    }
  }
  
  public void algoritmoPintor(Decagono3D decagono){
    float maior;
    int posMaior;
    for(int i=0; i<12; i++){
      maior = Integer.MIN_VALUE;
      posMaior = -1;
      for(int j=0; j<12; j++){
        if(maior < distanciasFaces[j]){
          maior = distanciasFaces[j];
          posMaior = j;
        }
      }
      pintaFaceDecagono(decagono, posMaior);
      distanciasFaces[i] = Integer.MIN_VALUE;
    }
  }

  public void pintaFaceDecagono(Decagono3D decagono1, int face){
    float taxaX1, taxaX2, x1, x2, altura;
    if(face == 0 || face == 1){
      taxaX1 = 0.2;
      taxaX2 = -1.5;
      x1 = decagono1.faces[face].arestas[0].vertices[0].getX()-6; //Esse +6 representa o ponto inicial no eixo x logo depois da aresta desenhada. 
      x2 = decagono1.faces[face].arestas[1].vertices[1].getX()-5; //Esse +5 representa o ponto inicial no eixo x logo depois da aresta desenhada.
      altura = decagono1.faces[face].arestas[1].vertices[1].getY();
      
      while(x1 < x2){
        line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
        //o x inicial de cada vértice é variado por uma taxa para que consigam tudo o que está dentro das arestas dessa região
        x1+=taxaX1;
        x2+=taxaX2;
        //o y é sempre variado em 0.9, onde só precisei variar as taxas no eixo x
        altura-=0.9;
      }
      
      if (face == 0)
        x1 = decagono1.faces[face].arestas[2].vertices[1].getX()+13;
      else
        x1 = decagono1.faces[face].arestas[2].vertices[1].getX()+15;
        
      x2 = decagono1.faces[face].arestas[3].vertices[1].getX()-5;
      altura = decagono1.faces[face].arestas[3].vertices[1].getY();
      taxaX1 = -0.1;
      taxaX2 = -1.1;
      
      //Região formada pelos vértices 1, 2, 3 e 4, que forma um trapézio.
      //Aqui o ponto de parada é a altura porque as coordenadas x das arestas esquerda e direita nunca vão se encontrar nessa região.
      while(altura >= decagono1.faces[face].arestas[0].vertices[1].getY()){
        line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
        x1+=taxaX1;
        x2+=taxaX2;
        altura-=0.9;
      }
      
      if (face == 0)
        x1 = decagono1.faces[face].arestas[4].vertices[1].getX()+17;
      else
        x1 = decagono1.faces[face].arestas[4].vertices[1].getX()+19;
        
      x2 = decagono1.faces[face].arestas[5].vertices[1].getX()-1.5;
      altura = decagono1.faces[face].arestas[5].vertices[1].getY(); 
      taxaX1 = -0.7;
      taxaX2 = -0.7;
      
      //Região formada pelos vértices 3, 4, 5 e 6, que forma um quadrilátero que possui as variações iguais no eixo x, como se fosse um retângulo em itálico.
      while(altura > decagono1.faces[face].arestas[2].vertices[1].getY()){
        line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
        x1+=taxaX1;
        x2+=taxaX2;
        altura-=0.9;
      }
      
      if (face == 0)
        x1 = decagono1.faces[face].arestas[6].vertices[1].getX()+16;
      else
        x1 = decagono1.faces[face].arestas[6].vertices[1].getX()+18;
        
      x2 = decagono1.faces[face].arestas[7].vertices[1].getX()+5;
      altura = decagono1.faces[face].arestas[7].vertices[1].getY();
      taxaX1 = -1.1;
      taxaX2 = -0.2;
      
      //Região formada pelos vértices 5, 6, 7 e 8, que forma um trapézio invertido.
      while(altura > decagono1.faces[face].arestas[4].vertices[1].getY()){
        line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
        x1+=taxaX1;
        x2+=taxaX2;
        altura-=0.9;
      }
      
      if (face==0){
        x1 = decagono1.faces[face].arestas[6].vertices[1].getX()+12;
        x2 = decagono1.faces[face].arestas[7].vertices[1].getX()+5;
      }
      else{
        x1 = decagono1.faces[face].arestas[6].vertices[1].getX()+18;
        x2 = decagono1.faces[face].arestas[7].vertices[1].getX()+6;
      }
      
      altura = decagono1.faces[face].arestas[6].vertices[1].getY();
      taxaX1 = 2.7;
      taxaX2 = -1;
      
      //Região formada pelos vértices 7, 8 e 9, que forma um triângulo invertido.
      while(x1 < x2 && altura <= decagono1.faces[face].arestas[8].vertices[1].getY()){
        line(x1, altura, decagono1.vertices[0].getZ(), x2, altura, decagono1.vertices[0].getZ());
        x1+=taxaX1;
        x2+=taxaX2;
        altura-=0.9;
      }
    } //fim do if face=0 ou face=1
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
    
    decagono2.drawFigura();
    
    calculaDistanciaFaces(decagono2, 840, 500, 80);
    
    for(int i=0; i<12; i++){
      print("Distância da face " + i + ": " + distanciasFaces[i] + "\n");
    }
    
    pintaDecagono3DRotacao(decagono2);

    fill(0, 0, 0);

  }

}
