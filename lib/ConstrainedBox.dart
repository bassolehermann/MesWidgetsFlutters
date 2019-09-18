import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyConstrainedBox extends StatefulWidget {
  @override
  _MyContrainedBox createState() => _MyContrainedBox();
}

class _MyContrainedBox extends State<MyConstrainedBox> {
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
        title: Text('ConstrainedBox'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
          child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 200.0,maxHeight: 600.0,),
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
