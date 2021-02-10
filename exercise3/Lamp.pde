class Lamp {
  boolean turnedOn = false;
  float x, y;
  String lightColor;
  float socketDiameter = 200;
  float lampDiameter = socketDiameter * 0.95;

  public Lamp(String colorOfLight, float xPos, float yPos) {
    this.lightColor = colorOfLight;
    this.x = xPos;
    this.y = yPos;
  }
  
  public void render() {
    drawLightSocket();
    glow();
  }

  public void drawLightSocket() {
    fillFromString("grey");
    
    ellipseMode(CENTER);
    ellipse(x, y, socketDiameter, socketDiameter);
    // ellipse(width / 2, 400, lightSocketDiameter, lightSocketDiameter);
    // ellipse(width / 2, 650, lightSocketDiameter, lightSocketDiameter);
  }

  public void glow() {
    fillFromString(lightColor);
    ellipse(x, y, lampDiameter, lampDiameter);
  }
}
