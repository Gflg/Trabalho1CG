public class Fase7 extends Tela {
  
  float[][] cisalhamentoX = new float[2][2];
  float[][] cisalhamentoY = new float[2][2];
   
  public Fase7() {
     super(2);
     setCisalhamentoX(0.7);
     setCisalhamentoY(0.5);
  }
  
  public void drawTela() {
      drawEstrelas();
      drawPentagonos();
      drawRespostas();
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
  
  public void drawEstrelas() {
    
      float[][] translacao = {{200},{0}};
      fill(0, 0, 0);
      textSize(40);
      
      Vertice pontaDaEstrela = new Vertice(510, 90);
      Estrela estrela1 = new Estrela(pontaDaEstrela);      
      stroke(255, 0, 0);
      estrela1.drawEstrela();
      
      stroke(0,0,0);
      text("→", 650, 140); //Posição inicial do texto x e y
      
      for (int i = 0; i < estrela1.vertices.length; i++) {
        estrela1.transformaVertice(i, cisalhamentoX);
        estrela1.moveVertice(i, translacao);
      }
      
      stroke(0, 0, 255);
      estrela1.drawEstrela();
      
      pontaDaEstrela.setY(pontaDaEstrela.getY() + 300);
      
      Estrela estrela2 = new Estrela(pontaDaEstrela);
      stroke(255, 0, 0);
      estrela2.drawEstrela();
      
      float[][] translacao2 = {{320},{-250}};
      
      for (int i = 0; i < estrela2.vertices.length; i++) {
        estrela2.transformaVertice(i, cisalhamentoY);
        estrela2.moveVertice(i, translacao2);
      }
      
      stroke(0,0,0);
      text("→", 650, 440); //Posição inicial do texto x e y
      
      stroke(0, 255, 0);
      estrela2.drawEstrela();
  }
  
  public void drawPentagonos() {
     Vertice pontaPentagono = new Vertice(510, 240);
     
     Pentagono pentagono1 = new Pentagono(pontaPentagono);
     stroke(163, 16, 163);
     pentagono1.drawPentagono();
     
     stroke(0, 0, 0);
     text("→", 650, 290); //Posição inicial do texto x e y
     
     float[][] translacao = {{300},{-250}};     
     for (int i = 0; i < pentagono1.vertices.length; i++) {
        pentagono1.transformaVertice(i, cisalhamentoY);
        pentagono1.moveVertice(i, translacao);
      }
      stroke(0, 255, 0);
      pentagono1.drawPentagono();
     
     pontaPentagono.setY(pontaPentagono.getY() + 300);
     
     Pentagono pentagono2 = new Pentagono(pontaPentagono);
     stroke(163, 16, 163);
     pentagono2.drawPentagono();
     
     float[][] translacao2 = {{200},{0}};
     
     for (int i = 0; i < pentagono2.vertices.length; i++) {
        pentagono2.transformaVertice(i, cisalhamentoX);
        pentagono2.moveVertice(i, translacao2);
     }
     
     stroke(0, 0, 0);
     text("→", 650, 590); //Posição inicial do texto x e y
     
  }
  
  public void drawRespostas() {
      super.drawRespostas();
      
      Vertice pontaDaEstrela = new Vertice(120, 800);
      Estrela estrela = new Estrela(pontaDaEstrela);
      stroke(255, 0, 0);
      estrela.drawEstrela();
      
      
      float[][] translacao = {{-300},{0}};
      Vertice pontaDoPentagono = new Vertice(120, 800);
      Pentagono pentagono1 = new Pentagono(pontaDoPentagono);
      for (int i = 0; i < pentagono1.vertices.length; i++) {
        pentagono1.transformaVertice(i, cisalhamentoX);
        pentagono1.moveVertice(i, translacao);
      }
      stroke(0, 0, 255);
      pentagono1.drawPentagono();
      
      
      translacao[0][0] = 620;
      translacao[1][0] = -60;
      Pentagono pentagono2 = new Pentagono(pontaDoPentagono);
      for (int i = 0; i < pentagono2.vertices.length; i++) {
        pentagono2.transformaVertice(i, cisalhamentoY);
        pentagono2.moveVertice(i, translacao);
      }
      stroke(20, 186, 50);
      pentagono2.drawPentagono();
      
      translacao[0][0] = 930;
      translacao[1][0] = 0;
      Pentagono pentagono3 = new Pentagono(pontaDoPentagono);
      for (int i = 0; i < pentagono3.vertices.length; i++) {
        pentagono3.moveVertice(i, translacao);
      }
      stroke(163, 16, 163);
      pentagono3.drawPentagono();
  }
  
}
