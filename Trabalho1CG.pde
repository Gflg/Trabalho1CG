int transicao;
int cor;
int fase;
int acertos;
int erros;
int ultimoTempo;
int pontuacao;
int aux;
int XuMax = 1300;
int YuMax = 1000;

void settings() {
  size(XuMax, YuMax);
}

void setup() {
  cor = transicao = fase = acertos = erros = ultimoTempo = pontuacao = 0;
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
    String estadoResposta;
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
          estadoResposta = primeiraFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 1000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 2:
          Fase2 segundaFase = new Fase2();
          segundaFase.drawTela();
          estadoResposta = segundaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 1000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 3:
          Fase3 terceiraFase = new Fase3();
          terceiraFase.drawTela();
          estadoResposta = terceiraFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 1000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 4:
          Fase4 quartaFase = new Fase4();
          quartaFase.drawTela();
          estadoResposta = quartaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 100000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 5:
          Fase5 quintaFase = new Fase5();
          quintaFase.drawTela();
          estadoResposta = quintaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 100000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 6:
          Fase6 sextaFase = new Fase6();
          sextaFase.drawTela();
          estadoResposta = sextaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 100000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 7:
          Fase7 setimaFase = new Fase7();
          setimaFase.drawTela();
          estadoResposta = setimaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 100000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      case 8:
          Fase8 oitavaFase = new Fase8();
          oitavaFase.drawTela();
          estadoResposta = oitavaFase.checkResposta();
          if (estadoResposta.equals(Estado.RESPOSTA_CERTA)) {
              transicao = 1;
              cor = 0;
              acertos++;
              aux = millis();
              pontuacao += 100000000/(aux - ultimoTempo);
              ultimoTempo = aux;
          } else if(estadoResposta.equals(Estado.RESPOSTA_ERRADA)) {
              transicao = 1;
              cor = 0;
              erros++;
          }
          break;
      default:
          fill(0, 0, 0);
          textSize(40);
          text("Obrigado por jogar!", 450, 450);
          text("Acertos: " + acertos, 540, 500);
          text("Erros    : " + erros, 540, 550);
          text("Pontuação: " + pontuacao, 540, 600);
    }
  }

}
