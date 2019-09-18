import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyStack extends StatefulWidget {
  @override
  _MyStack createState() => _MyStack();
}

class _MyStack extends State<MyStack> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(""),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Center(
          child: new Stack(
            children: <Widget>[
              Container(
                height: 300.0,
                width: 300.0,
                color: Colors.red,
              ),
              Container(
                height: 200.0,
                width: 200.0,
                color: Colors.yellow,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.green,
              )
            ],
          ),
        ));
  }
}
