public class FiguraGeometrica {

  Vertice[] vertices;
  private int quantidadeDimensoes, quantidadeVertices;
  private float XdMax = displayWidth;
  private float YdMax = displayHeight;
  private float XuMax = width;
  private float YuMax = height;

  public FiguraGeometrica(int quantidadeDimensoes, int quantidadeVertices) {
    this.vertices = new Vertice[quantidadeVertices];
    setQuantidadeDimensoes(quantidadeDimensoes);
    setQuantidadeVertices(quantidadeVertices);
    setXdMax(XdMax);
    setYdMax(YdMax);
    setXuMax(XuMax);
    setYuMax(YuMax);
  }

  int getQuantidadeDimensoes(){
    return this.quantidadeDimensoes;
  }

  private void setQuantidadeDimensoes(int quantidadeDimensoes) {
    this.quantidadeDimensoes = quantidadeDimensoes;
  }

  int getQuantidadeVertices(){
    return this.quantidadeVertices;
  }

  private void setQuantidadeVertices(int quantidadeVertices) {
    this.quantidadeVertices = quantidadeVertices;
  }

  float getXdMax(){
    return this.XdMax;
  }

  private void setXdMax(float XdMax) {
    this.XdMax = XdMax;
  }

  float getYdMax(){
    return this.YdMax;
  }

  private void setYdMax(float YdMax) {
    this.YdMax = YdMax;
  }

  float getXuMax(){
    return this.XuMax;
  }

  private void setXuMax(float XuMax) {
    this.XuMax = XuMax;
  }

  float getYuMax(){
    return this.YuMax;
  }

  private void setYuMax(float YuMax) {
    this.YuMax = YuMax;
  }

/*
  public void updateVertice(int vertice, float[] novosPontos) {
    for (int i = 0; i < getQuantidadeDimensoes(); i++){
      this.vertices[i][vertice] = novosPontos[i];
    }
  }
*/

  void transformaVertice(int vertice, float[][] transformacao) {
    for(int i = 0; i < transformacao.length; i++){
      float soma = 0;
      for(int j = 0; j < transformacao[i].length; j++){
        soma += transformacao[i][j]*vertices[vertice].coordenadas[j];
      }
      vertices[vertice].coordenadas[i] = soma;
    }
  }

  void moveVertice(int vertice, float[][] translacao) {
    for (int i = 0; i < getQuantidadeDimensoes(); i++){
      vertices[vertice].coordenadas[i] += translacao[i][0];
    }
  }

  void transformacaoCoordenadas(Vertice[] vertices) {
    for(int i = 0; i < vertices.length; i++){
      float Xu = vertices[i].coordenadas[0];
      float Yu = vertices[i].coordenadas[1];
      vertices[i].coordenadas[0] = (Xu * XdMax) / XuMax;
      //vertices[i].coordenadas[1] = ((Yu * (-YdMax)) / YuMax) + YdMax;
    }
  }

}
