public abstract class Tela {

  protected final int idResposta;
  
  private Vertice baseRespostaMin;
  private Vertice baseRespostaMax;
  
  private int deslocamentoX;

  public Tela(int idResposta) {
    this.idResposta = idResposta;
    this.deslocamentoX = 315;
    this.baseRespostaMin = new Vertice(225, 775);
    this.baseRespostaMax = new Vertice(275, 825);
  }

  public abstract void drawTela();

  // Desenha área padrão de respostas
  protected void drawRespostas() {
    fill(180);
    rect(25, 750, 1235, 200);

    fill(125, 255, 255);
    rect(baseRespostaMin.getX(), baseRespostaMin.getY(), 50, 50);
    rect(baseRespostaMin.getX() + deslocamentoX, baseRespostaMin.getY(), 50, 50);
    rect(baseRespostaMin.getX() + deslocamentoX * 2, baseRespostaMin.getY(), 50, 50);
    rect(baseRespostaMin.getX() + deslocamentoX * 3, baseRespostaMin.getY(), 50, 50);
  }

  /* 
   * Se pudermos colocar todos os check-boxes de resposta no mesmo lugar para
   * todas as telas, este método pode ficar implementado na super classe como está.
   * Se alguma fase não permitir, basta reimplementar com @Override
   */
  public String checkResposta() {
    //Pintar as opções de resposta com a cor preto
    if (mouseX >= baseRespostaMin.getX() && mouseX <= baseRespostaMax.getX() && mouseY >= baseRespostaMin.getY() && mouseY <= baseRespostaMax.getY()) {
      fill(0);
      rect(baseRespostaMin.getX(), baseRespostaMin.getY(), 50, 50);
      if (mousePressed)
        return this.idResposta == 1 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= (baseRespostaMin.getX() + deslocamentoX) && mouseX <= (baseRespostaMax.getX() + deslocamentoX) && mouseY >= baseRespostaMin.getY() && mouseY <= baseRespostaMax.getY()) {
      fill(0);
      rect(baseRespostaMin.getX() + deslocamentoX, baseRespostaMin.getY(), 50, 50);
      if (mousePressed)
        return this.idResposta == 2 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= (baseRespostaMin.getX() + deslocamentoX * 2) && mouseX <= (baseRespostaMax.getX() + deslocamentoX * 2) && mouseY >= baseRespostaMin.getY() && mouseY <= baseRespostaMax.getY()) {
      fill(0);
      rect(baseRespostaMin.getX() + deslocamentoX * 2, baseRespostaMin.getY(), 50, 50);
      if (mousePressed)
        return this.idResposta == 3 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    } else if (mouseX >= (baseRespostaMin.getX() + deslocamentoX * 3) && mouseX <= (baseRespostaMax.getX() + deslocamentoX * 3) && mouseY >= baseRespostaMin.getY() && mouseY <= baseRespostaMax.getY()) {
      fill(0);
      rect(baseRespostaMin.getX() + deslocamentoX * 3, baseRespostaMin.getY(), 50, 50);
      if (mousePressed)
        return this.idResposta == 4 ? Estado.RESPOSTA_CERTA : Estado.RESPOSTA_ERRADA;
    }
    return Estado.VAZIO;
  }
}
