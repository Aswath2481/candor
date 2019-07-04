import processing.serial.*; // imports library for serial communication
import java.awt.event.KeyEvent; // imports library for reading the data from the serial port
import java.io.IOException;
String file="data.txt",data=" ";
Serial myPort; // defines Object Serial
void serialEvent (Serial myPort)
{ 
  data= myPort.readStringUntil('.');
  String[] list = split((data),'.');
  saveStrings(file,list);
  println(data);
}
void setup() 
{
 myPort = new Serial(this,"COM15", 115200); // starts the serial communication
 myPort.bufferUntil('.'); // reads the data from the serial port up to the character '.'. So actually it reads this: angle,distance.
// orcFont = loadFont("OCRAExtended-30.vlw");
}
void draw()
{
}