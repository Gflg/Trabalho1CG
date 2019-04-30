public class Fase11 extends Tela {

  public Fase11() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawFigura();
    drawRespostas();
  }

  private void drawFigura() {

    //Criando os vértices do Decágono
    float[][] translacao = {{240},{360}};
    Vertice pontaDoDecagono1 = new Vertice(0, 0);
    Decagono decagono1 = new Decagono(pontaDoDecagono1);

    stroke(163, 16, 163);

    for (int i = 0; i < decagono1.vertices.length; i++){
      decagono1.moveVertice(i, translacao);
    }
    decagono1.drawFigura();

    fill(0, 0, 0);

    float[][] escala = {{1.5,0},{0,1.5}};

    Decagono decagono2 = new Decagono(pontaDoDecagono1);

    translacao[0][0] -= 80;
    translacao[1][0] -= 145;
    
    for (int i = 0; i < decagono2.vertices.length; i++){
      decagono2.moveVertice(i, translacao);
      decagono2.transformaVertice(i, escala);
    }

    stroke(0, 128, 0);

    decagono2.drawFigura();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", translacao[0][0] + 280, 1.25 * (translacao[1][0] + 145)); //Posição inicial do texto x e y

    //Criando os vértices do Decágono
    translacao[0][0] = 650;
    translacao[1][0] = 360;
    Vertice pontaDoDecagono3 = new Vertice(0, 0);
    Decagono decagono3 = new Decagono(pontaDoDecagono3);

    stroke(0, 128, 0);
    
    for (int i = 0; i < decagono3.vertices.length; i++){
      decagono3.moveVertice(i, translacao);
    }
    decagono3.drawFigura();

    fill(0, 0, 0);

    float[][] escala2 = {{1.2,0},{0,1.2}};

    Decagono decagono4 = new Decagono(pontaDoDecagono3);
    
    translacao[0][0] -= 110;
    translacao[1][0] -= 73;
    for (int i = 0; i < decagono4.vertices.length; i++){
      decagono4.moveVertice(i, translacao);
      decagono4.transformaVertice(i, escala2);
    }

    stroke(163, 16, 163);

    decagono4.drawFigura();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", translacao[0][0] + 280, 1.25 * (translacao[1][0] + 73)); //Posição inicial do texto x e y

    //Criando os vértices do Decágono
    translacao[0][0] = 1000;
    translacao[1][0] = 360;
    Vertice pontaDoDecagono5 = new Vertice(0, 0);
    Decagono decagono5 = new Decagono(pontaDoDecagono5);

    stroke(0, 128, 0);
    
    for (int i = 0; i < decagono5.vertices.length; i++){
      decagono5.moveVertice(i, translacao);
    }
    decagono5.drawFigura();

    fill(0, 0, 0);

    float[][] escala3 = {{0.8,0},{0,0.8}};

    Decagono decagono6 = new Decagono(pontaDoDecagono5);

    float[][] translacao3 = {{250},{110}};
    
    translacao[0][0] += 250;
    translacao[1][0] += 110;
    
    for (int i = 0; i < decagono6.vertices.length; i++){
      decagono6.moveVertice(i, translacao);
      decagono6.transformaVertice(i, escala3);
    }

    stroke(163, 16, 163);

    decagono6.drawFigura();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", 0.9 * translacao[0][0], 1.25 * (translacao[1][0] - 110)); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();

    //<---- RESPOSTA 1 ---->
    //Criando os vértices do Decágono
    float[][] translacao = {{120},{800}};

    Vertice pontaDoDecagono1 = new Vertice(0, 0);
    Decagono decagono1 = new Decagono(pontaDoDecagono1);

    stroke(0, 128, 0);
    
    for (int i = 0; i < decagono1.vertices.length; i++){
      decagono1.moveVertice(i, translacao);
    }
    decagono1.drawFigura();

    fill(0, 0, 0);

    float[][] escala = {{1.5,0},{0,1.5}};

    Decagono decagono2 = new Decagono(pontaDoDecagono1);

    translacao[0][0] -= 40;
    translacao[1][0] -= 298;
    for (int i = 0; i < decagono2.vertices.length; i++){
      decagono2.moveVertice(i, translacao);
      decagono2.transformaVertice(i, escala);
    }

    stroke(163, 16, 163);

    decagono2.drawFigura();
    //<---- RESPOSTA 1 ---->

    //<---- RESPOSTA 2 ---->
    //Criando os vértices do Decágono
    translacao[0][0] = 400;
    translacao[1][0] = 800;
    
    Vertice pontaDoDecagono3 = new Vertice(0, 0);
    Decagono decagono3 = new Decagono(pontaDoDecagono3);

    stroke(163, 16, 163);

    for (int i = 0; i < decagono3.vertices.length; i++){
      decagono3.moveVertice(i, translacao);
    }
    decagono3.drawFigura();

    fill(0, 0, 0);

    float[][] escala3 = {{0.8,0},{0,0.8}};

    Decagono decagono4 = new Decagono(pontaDoDecagono3);

    translacao[0][0] += 100;
    translacao[1][0] += 220;
    
    for (int i = 0; i < decagono4.vertices.length; i++){
      decagono4.moveVertice(i, translacao);
      decagono4.transformaVertice(i, escala3);
    }

    stroke(0, 128, 0);

    decagono4.drawFigura();
    //<---- RESPOSTA 2 ---->

    //<---- RESPOSTA 3 ---->
    //Criando os vértices do Decágono
    translacao[0][0] = 730;
    translacao[1][0] = 800;
    Vertice pontaDoDecagono5 = new Vertice(0, 0);
    Decagono decagono5 = new Decagono(pontaDoDecagono5);

    stroke(163, 16, 163);

    for (int i = 0; i < decagono5.vertices.length; i++){
      decagono5.moveVertice(i, translacao);
    }
    decagono5.drawFigura();

    fill(0, 0, 0);

    float[][] escala4 = {{0.6,0},{0,0.6}};

    Decagono decagono6 = new Decagono(pontaDoDecagono5);

    translacao[0][0] += 485;
    translacao[1][0] += 580;
    
    for (int i = 0; i < decagono6.vertices.length; i++){
      decagono6.moveVertice(i, translacao);
      decagono6.transformaVertice(i, escala4);
    }

    stroke(0, 128, 0);

    decagono6.drawFigura();
    //<---- RESPOSTA 3 ---->

    //<---- RESPOSTA 4 ---->
    //Criando os vértices do Decágono
    translacao[0][0] = 1030;
    translacao[1][0] = 800;
    Vertice pontaDoDecagono7 = new Vertice(0, 0);
    Decagono decagono7 = new Decagono(pontaDoDecagono7);

    stroke(0, 128, 0);
    
    for (int i = 0; i < decagono7.vertices.length; i++){
      decagono7.moveVertice(i, translacao);
    }
    decagono7.drawFigura();

    fill(0, 0, 0);

    float[][] escala5 = {{0.6,0},{0,0.6}};

    Decagono decagono8 = new Decagono(pontaDoDecagono7);

    translacao[0][0] += 685;
    translacao[1][0] += 580;
    
    for (int i = 0; i < decagono8.vertices.length; i++){
      decagono8.moveVertice(i, translacao);
      decagono8.transformaVertice(i, escala5);
    }

    stroke(163, 16, 163);

    decagono8.drawFigura();
    //<---- RESPOSTA 4 ---->

  }

}
