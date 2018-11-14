import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  Explicit
  var titleName = 'Basic Flutter';
  var messageString =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of ';
  var paddingDouble = 35.0;

  var friend1String = 'Doramon';
  var friend2String = 'Nopita';
  var friend3String = 'Sunako';

  @override
  Widget build(BuildContext context) {

    //DEmo Create Text Widget
    Text friend1Text = new Text(friend1String);
    Text friend2Text = new Text(friend2String);
    Text friend3Text = new Text(friend3String);

   // Create widget for body
    Widget widgetTextMessage = new Container(
      padding: new EdgeInsets.all(paddingDouble),
      child: new Text(messageString),
    );

    Widget widgetMyFriend = new Container(
      child: new Row(
        children: <Widget>[friend1Text, friend2Text, friend3Text],
      ),
    );

    return new MaterialApp(
      title: titleName,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleName),
        ),
        body: widgetMyFriend,
      ),
    );
  }
}
