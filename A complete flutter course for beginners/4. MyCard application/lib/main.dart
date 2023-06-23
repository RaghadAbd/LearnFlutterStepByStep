import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Container Widget _ Layout:

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Container(
            child: Text('Hello World!'),
            //to change its color
            color: Colors.lightBlue,
            //---------------------------------------------
            //to change its size
            height: 200.0,
            width: 200.0,
            //---------------------------------------------
            //The spaces outside the container
            //to move it away from all edges of the screen
            //margin: EdgeInsets.all(30.0),
            //in another way: Give values for the bottom and top together and the right and left together
            //margin :EdgeInsets.symmetric(vertical: 100.0,horizontal: 20.0)
            //in another way: Give values for bottom, top, right and left separately
            //margin: EdgeInsets.fromLTRB(100.0, 10.0, 50.0,20.0),
            //in another way: Give values for one of the sides
            margin: EdgeInsets.only(left: 100.0),
            //---------------------------------------------
            //The spaces inside the container
            //You can use the same options that you used with margin:all,symmetric,fromLTRB,only
            padding: EdgeInsets.all(20.0),
          ),
        ),
      ),
    );
  }
}
---------------------------------------------------------------------------------*/
//	Column & Row – Flutter :

/*
//stlss "shortcut"
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Column(
            //Column size = width and height of children
            //mainAxisSize: MainAxisSize.min,
            //-----------------
            //Reverse the order of the children "from bottom to top"
            //verticalDirection: VerticalDirection.up,
            //Reverse the order of the children "from bottom to top"
            verticalDirection: VerticalDirection.down,
            //------------------
            //Change the vertical view
            //Alignment: 1.top,
            //mainAxisAlignment: MainAxisAlignment.start,
            //           2.bottom,
            //mainAxisAlignment: MainAxisAlignment.end,
            //           3.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            //           4.at an equal distance,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //           5.One at the top, one at the bottom, and one in the center
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //------------------
            //determines how Column can position their children on his cross axis.
            //A  Column 's cross axis is horizontal.
            //Alignment: 1.far left,
            //crossAxisAlignment: CrossAxisAlignment.start,
            //           2.far right,
            //crossAxisAlignment: CrossAxisAlignment.end,
            //           3.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            //           4. Make every child fill the screen
            crossAxisAlignment:
                CrossAxisAlignment.stretch, // like "double.infinity"

            //to insert a list of items
            children: [
              Container(
                child: Text('Container 1'),
                color: Colors.white,
                height: 100.0,
                width: 100.0,
              ),
              //The space between two containers
              SizedBox(
                height: 30.0,  //In the case of column
                //width: 50.0,   //In the case of row
              ),
              Container(
                child: Text('Container 2'),
                color: Colors.blue,
                height: 100.0,
                width: 100.0,
              ),
              Container(
                child: Text('Container 3'),
                color: Colors.red,
                height: 100.0,
                width: 100.0, //double.infinity "full screen"
              ),
              // The container that makes the column height as children height and column width full screen,
              //  hidden container
              Container(
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//And row in the same way,But trends differ
---------------------------------------------------------------------------------*/
//CircleAvatar - AddFont - AddIcons - Flutter:

/*
//stlss "shortcut"
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Column(
            children: [
              //Typically used with a user's profile image,A circle that represents a user.
              CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/ProfileImage.jpg'),
              ),
              Text(
                'رغد عبد',
                style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'مهندسة حاسوب',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 18.0,
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.cyan[700],
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      '+09 876 543 21',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.all(20.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.cyan[700],
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'raghadadaqqa@gmail.com',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
---------------------------------------------------------------------------------*/
//Card & ListTile – Flutter
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Typically used with a user's profile image,A circle that represents a user.
              CircleAvatar(
                radius: 50.0,
                //backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/ProfileImage.jpg'),
              ),
              Text(
                'رغد عبد',
                style: TextStyle(
                  fontSize: 38.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cairo',
                ),
              ),
              Text(
                'مهندسة حاسوب',
                style: TextStyle(
                  color: Colors.grey.shade200,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(
                  color: Colors.cyan[100],
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    '+09 876 543 21',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan[700],
                  ),
                  title: Text(
                    'raghaddqq@gmail.com',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
