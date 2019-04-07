int transicao;
int cor;
int fase;

void setup() {
  cor = transicao = fase = 0;
  size(1300,1000);
  background(255);
}

void draw() {
  //fazer o cross fade da tela se uma opção for escolhida
  if (transicao == 1) {
    background(cor);
    cor += 5;
    if(cor > 255) {
      transicao = 0;
      fase++;
    }
  }
  else {
    switch (fase) {
      case 0:
          fill(0, 0, 0);
          textSize(40);
          text("Clique para iniciar!", 450, 500);
          if (mousePressed) {
            transicao = 1;
            cor = 0; 
          }
          break;
      case 1:
          Fase1 primeiraFase = new Fase1();
          primeiraFase.drawTela();
          if (primeiraFase.checkResposta()) {
            transicao = 1;
            cor = 0; 
          }
          break;
      default:
          fill(0, 0, 0);
          textSize(40);
          text("Obrigado por jogar!", 450, 500);
    }
  }
}
