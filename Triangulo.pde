public class Triangulo{
  float[][] vertices = new float[2][3];
  
  public Triangulo(Vertice v1, Vertice v2, Vertice v3){
    this.vertices[0][0] = v1.getX();
    this.vertices[1][0] = v1.getY();
    this.vertices[0][1] = v2.getX();
    this.vertices[1][1] = v2.getY();
    this.vertices[0][2] = v3.getX();
    this.vertices[1][2] = v3.getY();
  }
  
  public void drawTriangulo(){
    line(vertices[0][0], vertices[1][0], vertices[0][1], vertices[1][1]);
    line(vertices[0][0], vertices[1][0], vertices[0][2], vertices[1][2]);
    line(vertices[0][1], vertices[1][1], vertices[0][2], vertices[1][2]);
  }
  
  public void updateVertice(int vertice, float x, float y){
    this.vertices[0][vertice] = x;
    this.vertices[1][vertice] = y;
  }
  
  public void transformaVertice(int vertice, float[][] transformacao){
    for(int i=0; i<transformacao.length; i++){
      float soma = 0;
      for(int j=0; j<transformacao[i].length; j++){
        soma += transformacao[i][j]*vertices[j][vertice];
      }
      vertices[i][vertice] = soma;
    }
    println(vertices[1][vertice]);
  }
  
  public void moveVertice(int vertice, float[][] translacao){
    vertices[0][vertice] += translacao[0][0];
    vertices[1][vertice] += translacao[1][0];
  }
}