import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAlign extends StatefulWidget {
  @override
  _MyAlign createState() => _MyAlign();
}
class _MyAlign extends State<MyAlign> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
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
          height: 300.0,
          width: 300.0,
          color: Colors.yellow,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
