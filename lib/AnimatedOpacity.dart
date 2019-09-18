import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedOpacity extends StatefulWidget {
  @override
  _MyAnimatedOpacity createState() => _MyAnimatedOpacity();
}

class _MyAnimatedOpacity extends State<MyAnimatedOpacity> {
  double opacite = 1.0;

  void opacitychange() {
    setState(() {
      opacite = opacite == 0.0 ? 1.0 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: new Center(
          child: AnimatedOpacity(
        opacity: opacite,
        duration: Duration(seconds: 2),
        child: Container(
          color: Colors.indigo,
          height: 300,
          width: 300,
          child: GestureDetector(
            onTap: opacitychange,
          ),
        ),
      )),
    );
  }
}
