public class Vertice {

  public float[] coordenadas;
  public int quantidadeDimensoes;

  public Vertice(float... coordenadas) {
    this.quantidadeDimensoes = coordenadas.length;
    this.coordenadas = coordenadas;
  }

  public float getX() {
    return this.coordenadas[0];
  }

  public float getY() {
    return this.coordenadas[1];
  }
  
  public float getZ() {
     return this.coordenadas[2]; 
  }

  public void setX(float x) {
    this.coordenadas[0] = x;
  }

  public void setY(float y) {
    this.coordenadas[1] = y;
  }
  
  public void setZ(float z) {
     this.coordenadas[2] = z; 
  }
  
}
