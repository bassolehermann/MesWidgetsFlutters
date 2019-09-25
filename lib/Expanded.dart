import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyExpanded extends StatefulWidget {
  @override
  _MyExpanded createState() => _MyExpanded();
}

class _MyExpanded extends State<MyExpanded> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(color:Colors.orange),
            ),
            Expanded(
              flex: 8,
              child: Container(color:Colors.white),
            ),
            Expanded(
              flex: 1,
              child: Container(color:Colors.green),
            ),
          ],
        )
    );
  }
}
