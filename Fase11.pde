public class Fase11 extends Tela {

  public Fase11() {
    super(3); //Parâmetro para o construtor da super classe é a posição (número) da resposta correta
  }

  public void drawTela() {
    drawDecagono();
    drawRespostas();
  }

  private void drawDecagono() {

    //Criando os vértices do Decágono
    Vertice pontaDoDecagono1 = new Vertice(240, 360);
    Decagono decagono1 = new Decagono(pontaDoDecagono1);

    stroke(163, 16, 163);

    decagono1.drawDecagono();

    fill(0, 0, 0);

    float[][] escala = {{1.5,0},{0,1.5}};

    Decagono decagono2 = new Decagono(pontaDoDecagono1);

    float[][] translacao = {{-80},{-145}};

    for (int i = 0; i < decagono2.vertices.length; i++){
      decagono2.moveVertice(i, translacao);
      decagono2.transformaVertice(i, escala);
    }

    stroke(0, 128, 0);

    decagono2.drawDecagono();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", pontaDoDecagono1.getX() + 200, 1.2 * pontaDoDecagono1.getY()); //Posição inicial do texto x e y

    //Criando os vértices do Decágono
    Vertice pontaDoDecagono3 = new Vertice(650, 360);
    Decagono decagono3 = new Decagono(pontaDoDecagono3);

    stroke(0, 128, 0);

    decagono3.drawDecagono();

    fill(0, 0, 0);

    float[][] escala2 = {{1.2,0},{0,1.2}};

    Decagono decagono4 = new Decagono(pontaDoDecagono3);

    float[][] translacao2 = {{-110},{-73}};

    for (int i = 0; i < decagono4.vertices.length; i++){
      decagono4.moveVertice(i, translacao2);
      decagono4.transformaVertice(i, escala2);
    }

    stroke(163, 16, 163);

    decagono4.drawDecagono();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", pontaDoDecagono3.getX() + 170, 1.2 * pontaDoDecagono3.getY()); //Posição inicial do texto x e y

    //Criando os vértices do Decágono
    Vertice pontaDoDecagono5 = new Vertice(1000, 360);
    Decagono decagono5 = new Decagono(pontaDoDecagono5);

    stroke(0, 128, 0);

    decagono5.drawDecagono();

    fill(0, 0, 0);

    float[][] escala3 = {{0.8,0},{0,0.8}};

    Decagono decagono6 = new Decagono(pontaDoDecagono5);

    float[][] translacao3 = {{250},{110}};

    for (int i = 0; i < decagono6.vertices.length; i++){
      decagono6.moveVertice(i, translacao3);
      decagono6.transformaVertice(i, escala3);
    }

    stroke(163, 16, 163);

    decagono6.drawDecagono();

    //Fonte do texto
    fill(0, 0, 0);
    textSize(40);
    text("→", pontaDoDecagono3.getX() + 500, 1.2 * pontaDoDecagono3.getY()); //Posição inicial do texto x e y

  }

  protected void drawRespostas() {
    // Desenhando área padrão de resposta
    super.drawRespostas();

    //<---- RESPOSTA 1 ---->
    //Criando os vértices do Decágono
    Vertice pontaDoDecagono1 = new Vertice(120, 800);
    Decagono decagono1 = new Decagono(pontaDoDecagono1);

    stroke(0, 128, 0);

    decagono1.drawDecagono();

    fill(0, 0, 0);

    float[][] escala = {{1.5,0},{0,1.5}};

    Decagono decagono2 = new Decagono(pontaDoDecagono1);

    float[][] translacao = {{-40},{-298}};

    for (int i = 0; i < decagono2.vertices.length; i++){
      decagono2.moveVertice(i, translacao);
      decagono2.transformaVertice(i, escala);
    }

    stroke(163, 16, 163);

    decagono2.drawDecagono();
    //<---- RESPOSTA 1 ---->

    //<---- RESPOSTA 2 ---->
    //Criando os vértices do Decágono
    Vertice pontaDoDecagono3 = new Vertice(400, 800);
    Decagono decagono3 = new Decagono(pontaDoDecagono3);

    stroke(163, 16, 163);

    decagono3.drawDecagono();

    fill(0, 0, 0);

    float[][] escala3 = {{0.8,0},{0,0.8}};

    Decagono decagono4 = new Decagono(pontaDoDecagono3);

    float[][] translacao3 = {{100},{220}};

    for (int i = 0; i < decagono4.vertices.length; i++){
      decagono4.moveVertice(i, translacao3);
      decagono4.transformaVertice(i, escala3);
    }

    stroke(0, 128, 0);

    decagono4.drawDecagono();
    //<---- RESPOSTA 2 ---->

    //<---- RESPOSTA 3 ---->
    //Criando os vértices do Decágono
    Vertice pontaDoDecagono5 = new Vertice(730, 800);
    Decagono decagono5 = new Decagono(pontaDoDecagono5);

    stroke(163, 16, 163);

    decagono5.drawDecagono();

    fill(0, 0, 0);

    float[][] escala4 = {{0.6,0},{0,0.6}};

    Decagono decagono6 = new Decagono(pontaDoDecagono5);

    float[][] translacao4 = {{485},{580}};

    for (int i = 0; i < decagono6.vertices.length; i++){
      decagono6.moveVertice(i, translacao4);
      decagono6.transformaVertice(i, escala4);
    }

    stroke(0, 128, 0);

    decagono6.drawDecagono();
    //<---- RESPOSTA 3 ---->

    //<---- RESPOSTA 4 ---->
    //Criando os vértices do Decágono
    Vertice pontaDoDecagono7 = new Vertice(1030, 800);
    Decagono decagono7 = new Decagono(pontaDoDecagono7);

    stroke(0, 128, 0);

    decagono7.drawDecagono();

    fill(0, 0, 0);

    float[][] escala5 = {{0.6,0},{0,0.6}};

    Decagono decagono8 = new Decagono(pontaDoDecagono7);

    float[][] translacao5 = {{685},{580}};

    for (int i = 0; i < decagono8.vertices.length; i++){
      decagono8.moveVertice(i, translacao5);
      decagono8.transformaVertice(i, escala5);
    }

    stroke(163, 16, 163);

    decagono8.drawDecagono();
    //<---- RESPOSTA 4 ---->

  }

}
