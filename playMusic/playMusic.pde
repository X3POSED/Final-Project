//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  //size(500,600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadimage
  song1 = minim.loadFile("../Music/Ghost_Walk.mp3");//able to pass absolute path, file name & extension, and URL
}//End setup
//
void draw() {
}//End draw
//
void keyPressed() {
  if ( key=='P' || key == 'p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  int loopNum = 2; //Local Variable plays once and loops twice
  if ( key=='L' || key == 'l' ) song1.loop(loopNum-1); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
}//End keyPressed
//
void mouseClicked() {
}//End mousePressed
//
//End Main Program
