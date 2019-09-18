import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAspectRadio extends StatefulWidget {
  @override
  _MyAspectRadio createState() => _MyAspectRadio();
}

class _MyAspectRadio extends State<MyAspectRadio> {
  double valeur = 3/2;

  void changevaleur() {
    setState(() {
      valeur = valeur == 19.5/9 ? 3/2 : 19.5/9;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Container(
        child:Center(
          child: AspectRatio(
            aspectRatio: valeur,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        )

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changevaleur,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),
      ),
    );
  }
}
