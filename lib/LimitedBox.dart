import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLimitedBox extends StatefulWidget {
  @override
  _MyLimitedBox createState() => _MyLimitedBox();
}

class _MyLimitedBox extends State<MyLimitedBox> {
  double valeur = 10;

  void changevaleur() {
    setState(() {
      valeur=valeur+3;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LimitedBox'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
          child: LimitedBox(
            maxHeight: 300,
            maxWidth: 300,
            child: Text(
              "Hello World !",
              style: TextStyle(fontSize: valeur),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: changevaleur,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),
      ),
    );
  }
}
