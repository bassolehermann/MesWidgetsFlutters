import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedPadding extends StatefulWidget {
  @override
  _MyAnimatedPadding createState() => _MyAnimatedPadding();
}

class _MyAnimatedPadding extends State<MyAnimatedPadding> {
  double hauteur = 100.0;

  void paddingchange() {
    setState(() {
      hauteur = hauteur == 100.0 ? 150.0 : 100.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: new Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(hauteur),
          duration: Duration(seconds: 1),
          child: Container(
            color: Colors.blueAccent,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: paddingchange,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),
      ),
    );
  }
}
