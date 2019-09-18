import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyMediaQuery extends StatefulWidget {
  @override
  _MyMediaQuery createState() => _MyMediaQuery();
}

class _MyMediaQuery extends State<MyMediaQuery> {
  @override
  Widget build(BuildContext context) {
    final taille = MediaQuery.of(context).size;

    final largeur = taille.width;
    final hauteur = taille.height;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('MediaQuery'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(""),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
                flex: 8,
                child: Container(
                  height: hauteur / 3,
                  width: largeur / 2,
                  color: Colors.yellow,
                  child: Text(
                    "MediaQuery",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).textScaleFactor * 2,
                    ),
                  ),
                )),
            Expanded(
              flex: 1,
              child: Container(),
            )
          ],
        ));
  }
}
