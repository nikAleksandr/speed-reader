/* @pjs font="AurulentSansMono-Regular"; 
 */

String p1 = "Arguments are local variables used inside the body of a function that get filled with values when the function is called. In the examples, they have one purpose only, to initialize the variables inside of an object. These are the variables that count, the car's actual color, the car's actual x location, and so on. The constructor's arguments are just temporary, and exist solely to pass a value from where the object is made into the object itself. ";
int wpm = 200;
int fontSize = 20;
////
PFont textFont;
String[] words = split(p1, ' ');
int i = 0;
float wOdd;
float charWidth = fontSize * .6;

void setup() {
  size(200, 100); 
  textFont = createFont("AurulentSansMono-Regular", fontSize);
  smooth();
  textAlign(CENTER, CENTER);

  frameRate(wpm/60);
  words = append(words, "The End");
}

void draw() {
  background(255);

  wOdd = 0;
  if (words[i].length() > 3) {
    wOdd = .5;
    if (words[i].length() % 2 != 0) {
      wOdd = 1.0;
    }
  }


  fill(0);
  line(width/2, 0, width/2, height);
  textFont(textFont);
  text(words[i], width/2+(charWidth*wOdd), height/2); 

   i++;
}

void keyPressed() {
  if (keyCode == LEFT) {
    i -= 1;
  } 
  else if (keyCode == RIGHT) {
    i += 1;
  } 
  else {
    i = i;
  }

  if (i < 0) {
    i = words.length;
  }

  if (i > words.length) {
    i = 0;
  }
  println(i);
}


