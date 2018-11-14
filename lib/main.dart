import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //  Explicit
  var titleName = 'Basic Flutter';
  var messageString =
      'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of ';
  var paddingDouble = 25.0;

  var friend1String = 'Doramon';
  var friend2String = 'Nopita';
  var friend3String = 'Sunako';
  var myFontSize = 25.0;
  @override
  Widget build(BuildContext context) {
    //DEmo Create Text Widget
    Text friend1Text = new Text(
      friend1String,
      style: new TextStyle(
          color: Colors.red[900],
          fontSize: myFontSize,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    );
    Text friend2Text = new Text(
      friend2String,
      style: new TextStyle(
          color: Colors.blue[900],
          fontSize: myFontSize,
          fontStyle: FontStyle.italic),
    );
    Text friend3Text = new Text(
      friend3String,
      style: new TextStyle(
          color: Colors.green[700],
          fontSize: myFontSize,
          fontStyle: FontStyle.normal),
    );

    // Create widget for body
    Widget widgetTextMessage = new Container(
      padding: new EdgeInsets.all(paddingDouble),
      child: new Text(messageString),
    );

    Widget widgetMyFriend = new Container( padding: new EdgeInsets.all(paddingDouble),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: friend1Text,
          ),
          new Expanded(
            child: friend2Text,
          ),
          new Expanded(
            child: friend3Text,
          )
        ],
      ), color: Colors.yellow,
    );

    return new MaterialApp(
      title: titleName,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(titleName),
        ),
        body: new Container(child: new Column(children: <Widget>[widgetMyFriend,widgetMyFriend,widgetTextMessage],),),
      ),
    );
  }
}
