public abstract class Tela {

  protected final int idResposta;
  
  private Vertice baseRespostaMin;
  private Vertice baseRespostaMax;
  
  private int deslocamentoX;
  
  private Quadrilatero resposta1;
  private Quadrilatero resposta2;
  private Quadrilatero resposta3;
  private Quadrilatero resposta4;

  public Tela(int idResposta) {
    this.idResposta = idResposta;
    this.deslocamentoX = 315;
    this.baseRespostaMin = new Vertice(225, 775, 0);
    this.baseRespostaMax = new Vertice(275, 825, 0);
    this.resposta1 = new Quadrilatero(baseRespostaMin.getX(), baseRespostaMin.getY(), baseRespostaMin.getZ(), 50, 50);
    this.resposta2 = new Quadrilatero(baseRespostaMin.getX() + deslocamentoX, baseRespostaMin.getY(), baseRespostaMin.getZ(), 50, 50);
    this.resposta3 = new Quadrilatero(baseRespostaMin.getX() + deslocamentoX * 2, baseRespostaMin.getY(), baseRespostaMin.getZ(), 50, 50);
    this.resposta4 = new Quadrilatero(baseRespostaMin.getX() + deslocamentoX * 3, baseRespostaMin.getY(), baseRespostaMin.getZ(), 50, 50);
  }

  public abstract void drawTela();

  // Desenha área padrão de respostas
  protected void drawRespostas() {

    stroke(0,0,0);
    Quadrilatero fundo = new Quadrilatero(25, 735, 0, 1250, 10);
    fundo.drawFigura();
    stroke(180);
    fundo.pintaFundo();

    stroke(125, 255, 255);
    resposta1.drawFigura();
    resposta1.pintaFundo();
    
    stroke(125, 255, 255);
    resposta2.drawFigura();
    resposta2.pintaFundo();
    
    stroke(125, 255, 255);
    resposta3.drawFigura();
    resposta3.pintaFundo();
    
    stroke(125, 255, 255);
    resposta4.drawFigura();
    resposta4.pintaFundo();
  }

  /* 
   * Se pudermos colocar todos os check-boxes de resposta no mesmo lugar para
   * todas as telas, este método pode ficar implementado na super classe como está.
   * Se alguma fase não permitir, basta reimplementar com @Override
   */
  public String checkResposta() {
    //Pintar as opções de resposta com a cor preto
    if (mouseX >= resposta1.vertices[0].getX() && mouseX <= resposta1.vertices[3].getX() && mouseY >= resposta1.vertices[0].getY() && mouseY <= resposta1.vertices[3].getY()) {
      stroke(0);
      resposta1.pintaFundo();
      if (mousePressed)
        return this.idResposta == 1 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= resposta2.vertices[0].getX() && mouseX <= resposta2.vertices[3].getX() && mouseY >= resposta2.vertices[0].getY() && mouseY <= resposta2.vertices[3].getY()) {
      stroke(0);
      resposta2.pintaFundo();
      if (mousePressed)
        return this.idResposta == 2 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= resposta3.vertices[0].getX() && mouseX <= resposta3.vertices[3].getX() && mouseY >= resposta3.vertices[0].getY() && mouseY <= resposta3.vertices[3].getY()) {
      stroke(0);
      resposta3.pintaFundo();
      if (mousePressed)
        return this.idResposta == 3 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= resposta4.vertices[0].getX() && mouseX <= resposta4.vertices[3].getX() && mouseY >= resposta4.vertices[0].getY() && mouseY <= resposta4.vertices[3].getY()) {
      stroke(0);
      resposta4.pintaFundo();
      if (mousePressed)
        return this.idResposta == 4 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    }
    return Estado.VAZIO;
  }
}
