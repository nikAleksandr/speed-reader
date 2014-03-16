String p1 = "Kurt Vonnegut, whose dark comic talent and urgent moral vision in novels like “Slaughterhouse-Five,” “Cat’s Cradle” and “God Bless You, Mr. Rosewater” caught the temper of his times and the imagination of a generation, died last night in Manhattan. He was 84 and had homes in Manhattan and in Sagaponack on Long Island.  His death was reported by his wife, the author and photographer Jill Krementz, who said he had been hospitalized after suffering irreversible brain injuries as a result of a fall several weeks ago.  Mr. Vonnegut wrote plays, essays and short fiction. But it was his novels that became classics of the American counterculture, making him a literary idol, particularly to students in the 1960s and ’70s. Dog-eared paperback copies of his books could be found in the back pockets of blue jeans and in dorm rooms on campuses throughout the United States.  Like Mark Twain, Mr. Vonnegut used humor to tackle the basic questions of human existence: Why are we in this world? Is there a presiding figure to make sense of all this, a god who in the end, despite making people suffer, wishes them well?  He also shared with Twain a profound pessimism. “Mark Twain,” Mr. Vonnegut wrote in his 1991 book, “Fates Worse Than Death: An Autobiographical Collage,” “finally stopped laughing at his own agony and that of those around him. He denounced life on this planet as a crock. He died.”  Not all Mr. Vonnegut’s themes were metaphysical. With a blend of science fiction, philosophy and jokes, he also wrote about the banalities of consumer culture, for example, or the destruction of the environment.  His novels — 14 in all — were alternate universes, filled with topsy-turvy images and populated by races of his own creation, like the Tralfamadorians and the Mercurian Harmoniums. He invented phenomena like chrono-synclastic infundibula (places in the universe where all truths fit neatly together) as well as religions, like the Church of God the Utterly Indifferent and Bokononism (based on the books of a black British Episcopalian from Tobago “filled with bittersweet lies,” a narrator says).  The defining moment of Mr. Vonnegut’s life was the firebombing of Dresden, Germany, by Allied forces in 1945, an event he witnessed firsthand as a young prisoner of war. Thousands of civilians were killed in the raids, many of them burned to death or asphyxiated. “The firebombing of Dresden,” Mr. Vonnegut wrote, “was a work of art.” It was, he added, “a tower of smoke and flame to commemorate the rage and heartbreak of so many who had had their lives warped or ruined by the indescribable greed and vanity and cruelty of Germany.”";
int wpm = 400;
int fontSize = 20;
////
PFont textFont;
String[] words = split(p1, ' ');
int i = 0;
float wOdd;
char middleChar;
float charWidth = fontSize * .6;

void setup() {
  size(200, 100); 
  textFont = createFont("AurulentSansMono-Regular", fontSize);
  smooth();
  textAlign(CENTER, CENTER);

  frameRate(wpm/60);
  words = append(words, "The End?");
}

void draw() {
  background(255);

  int wordLength = words[i].length();

  wOdd = 0;
  middleChar= ' ';
  if(wordLength > 1){
    middleChar = words[i].charAt(floor(wordLength/2)-1);
      wOdd = 1;
  }
  if (wordLength % 2 == 0) {
    wOdd = .5;
  }



  fill(0);
  //centered line for guidance
  line(width/2-(charWidth/2), 0, width/2-(charWidth/2), height);
  line(width/2+(charWidth/2), 0, width/2+(charWidth/2), height);

  textFont(textFont);
  text(words[i], width/2+(charWidth*wOdd), height/2); 
  fill(255, 0, 0);
  text(middleChar, width/2, height/2);

  if (i<(words.length-1)) {
     i++;
  }
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

