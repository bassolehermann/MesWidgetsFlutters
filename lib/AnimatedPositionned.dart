import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedPositioned extends StatefulWidget {
  @override
  _MyAnimatedPositioned createState() => _MyAnimatedPositioned();
}

class _MyAnimatedPositioned extends State<MyAnimatedPositioned> {
  double positiontop = 300;
  double positionbottom = 300;

  void positionchange() {
    setState(() {
      positiontop = positiontop == 100 ? 300 : 100;
      positionbottom = positionbottom == 500 ? 300 : 500;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: new Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 350,
            bottom: 350,
            child: Container(
              height: 100.0,
              color: Colors.red,
              width: 100.0,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            top: positiontop,
            bottom: positionbottom,
            child: Container(
              color: Colors.indigo,
              height: 200.0,
              width: 200.0,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: positionchange,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),
      ),
    );
  }
}
