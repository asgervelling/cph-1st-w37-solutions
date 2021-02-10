/*
3.a Draw a traffic light using colors stored in variables - one for each of the 4 colors (background is the 4th).
3.b add a gray color for the turned off effect
3.c have the light turn on/off (green or red) automatically.
*/

import java.util.HashMap;

HashMap<String, int[]> colors = getColorHashmap();
boolean[] lightsTurnedOn = {true, false, false}; // red, yellow, green

Lamp redLamp = new Lamp("red", 200, 150);
Lamp yellowLamp = new Lamp("yellow", 200, 400);
Lamp greenLamp = new Lamp("green", 200, 650);

void setup() {
  size(400, 800);
}

void draw() {
  drawTrafficLight();
}

void drawTrafficLight() {
  fillFromString("black");
  rect(0, 0, width, height);
  
  redLamp.render();
  yellowLamp.render();
  greenLamp.render();
  
  
  
}

void fillFromString(String colorName) {
  switch (colorName) {
    case "red":
      fill(colors.get("red")[0], colors.get("red")[1], colors.get("red")[2], colors.get("red")[3]);
      break;
    case "yellow":
      fill(colors.get("yellow")[0], colors.get("yellow")[1], colors.get("yellow")[2], colors.get("yellow")[3]);
      break;
    case "green":
      fill(colors.get("green")[0], colors.get("green")[1], colors.get("green")[2], colors.get("green")[3]);
      break;
    case "black":
      fill(colors.get("black")[0], colors.get("black")[1], colors.get("black")[2], colors.get("black")[3]);
      break;
    case "grey":
      fill(colors.get("grey")[0], colors.get("grey")[1], colors.get("grey")[2], colors.get("grey")[3]);
      break;
  }
}
