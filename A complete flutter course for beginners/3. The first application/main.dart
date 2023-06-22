import 'package:flutter/material.dart';

/*
// the main function is the starting point for all our Flutter Apps
//Display "Hello World!" in the middle of the screen

void main(){
  runApp(
  	MaterialApp(
         home: Center(
             child: Text('Hello World!'),
         ),
      ),
  );
}

----------------------------------------------------------------------------- */

/*
//Display an image from the Internet on middle of the screen

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Fikra'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://images.unsplash.com/photo-1566438480900-0609be27a4be?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW1hZ2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
            height: 300,
          ),
        ),
      ),
    ),
  );
}

----------------------------------------------------------------------------- */

//A image of the project files "A folder named "images" was created in the project  folder "root folder" and the image "light.png" was uploaded to it."
//To be able to use images in the application, you must add the "images" folder path in the "pubspec.yaml" file

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text('Fikra'),
          backgroundColor: Colors.blue[900],
        ),
        body: Center(
          child: Image(
            // As a frame for the image
            image: AssetImage('images/light.png'),
            height: 300,
          ),
        ),
      ),
    ),
  );
}
