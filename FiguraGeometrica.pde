public class FiguraGeometrica {

  float[][] vertices;
  int quantidadeDimensoes, quantidadeVertices;

  public FiguraGeometrica(int quantidadeDimensoes, int quantidadeVertices) {
    this.vertices = new float[quantidadeDimensoes][quantidadeVertices];
    setQuantidadeDimensoes(quantidadeDimensoes);
    setQuantidadeVertices(quantidadeVertices);
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

  public void updateVertice(int vertice, float[] novosPontos) {
    for (int i = 0; i < getQuantidadeDimensoes(); i++){
      this.vertices[i][vertice] = novosPontos[i];
    }
  }

  void transformaVertice(int vertice, float[][] transformacao) {
    for(int i = 0; i < transformacao.length; i++){
      float soma = 0;
      for(int j = 0; j < transformacao[i].length; j++){
        soma += transformacao[i][j]*vertices[j][vertice];
      }
      vertices[i][vertice] = soma;
    }
  }

  void moveVertice(int vertice, float[][] translacao) {
    for (int i = 0; i < getQuantidadeDimensoes(); i++){
      vertices[i][vertice] += translacao[i][0];
    }
  }

}
