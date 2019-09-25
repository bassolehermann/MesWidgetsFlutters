import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class MyTransform extends StatefulWidget {
  @override
  _MyTransform createState() => _MyTransform();
}

class _MyTransform extends State<MyTransform> {
  var variable = 0.0;
  void changer() {
    setState(() {
      variable = variable == pi/4 ? 0.0 : pi/4;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
          child: Transform.rotate(
        angle: variable,
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.brown,
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: changer,
        child: Icon(Icons.send),
      ),
    );
  }
}
