int transicao=0;
int cor=0;

void setup(){
  size(1300,1000);
  background(255);
}

void draw(){
  //fazer o cross fade da tela se uma opção for escolhida
  if (transicao == 1){
    background(cor);
    cor+=5;
    if(cor > 255)
      transicao=0;
  }
  else{
    Fase1 primeiraFase = new Fase1();
    primeiraFase.drawTela();
    if (primeiraFase.checkResposta()) {
      transicao=1;
      cor=0; 
    }
  }
}
