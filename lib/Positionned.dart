import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyPositioned extends StatefulWidget {
  @override
  _MyPositioned createState() => _MyPositioned();
}

class _MyPositioned extends State<MyPositioned> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Positioned'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              right: 25,
              bottom: 75,
              child: Container(
                height: 200.0,
                width: 200.0,
                color: Colors.green,
              ),
            )
          ],
        ));
  }
}
