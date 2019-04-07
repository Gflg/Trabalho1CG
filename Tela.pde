public abstract class Tela {
  protected final int idResposta;
  
  public Tela(int idResposta) {
    this.idResposta = idResposta;
  }
  
  public abstract void drawTela();
  
  /* 
  * Se pudermos colocar todos os check-boxes de resposta no mesmo lugar para
  * todas as telas, este método pode ficar implementado na super classe como está.
  * Se alguma fase não permitir, basta reimplementar com @Override
  */
  public boolean checkResposta() {
    //Pintar as opções de resposta com a cor preto
    if(mouseX >= 225 && mouseX <= 275 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(225, 775, 50, 50);
      if(mousePressed && this.idResposta == 1){
        return true;
      }
    }
    else if (mouseX >= 550 && mouseX <= 600 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(550, 775, 50, 50);
      if(mousePressed && this.idResposta == 2){
        return true;
      }
    }
    else if (mouseX >= 825 && mouseX <= 875 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(825, 775, 50, 50);
      if(mousePressed && this.idResposta == 3){
        return true;
      }
    }
    else if (mouseX >= 1150 && mouseX <= 1200 && mouseY >= 775 && mouseY <= 825){
      fill(0);
      rect(1150, 775, 50, 50);
      if(mousePressed && this.idResposta == 4){
        return true;
      }
    }
    return false;
  }
}
