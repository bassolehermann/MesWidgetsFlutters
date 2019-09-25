import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFittedBox extends StatefulWidget {
  @override
  _MyFittedBox createState() => _MyFittedBox();
}

class _MyFittedBox extends State<MyFittedBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('FittedBox'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Center(
          child: Container(
            color: Colors.blueAccent,
            width: 400.0,
            height: 250.0,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Container(
                height: 300.0,
                width: 300.0,
                color: Colors.yellow,
              ),
            ),
          ),
        )


    );
  }
}
