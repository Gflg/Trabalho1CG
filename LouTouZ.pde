public class LouTouZ extends FiguraGeometrica {

  public LouTouZ(Vertice[] verticesLouTouZ){
    super(2, verticesLouTouZ.length);
    this.vertices[0] = new Vertice(verticesLouTouZ[0]);
    this.vertices[1] = new Vertice(verticesLouTouZ[1]);
    this.vertices[2] = new Vertice(verticesLouTouZ[2]);
    this.vertices[3] = new Vertice(verticesLouTouZ[3]);
    this.vertices[4] = new Vertice(verticesLouTouZ[4]);
    this.vertices[5] = new Vertice(verticesLouTouZ[5]);
    this.vertices[6] = new Vertice(verticesLouTouZ[6]);
    this.vertices[7] = new Vertice(verticesLouTouZ[7]);
  }

  public void drawLouTouZ() {
    line(vertices[0].getX(), vertices[0].getY(), vertices[1].getX(), vertices[1].getY());
    line(vertices[0].getX(), vertices[0].getY(), vertices[2].getX(), vertices[2].getY());
    line(vertices[2].getX(), vertices[2].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[1].getX(), vertices[1].getY(), vertices[3].getX(), vertices[3].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[5].getX(), vertices[5].getY());
    line(vertices[4].getX(), vertices[4].getY(), vertices[6].getX(), vertices[6].getY());
    line(vertices[6].getX(), vertices[6].getY(), vertices[7].getX(), vertices[7].getY());
    line(vertices[5].getX(), vertices[5].getY(), vertices[7].getX(), vertices[7].getY());
  }

}
