import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFlexible extends StatefulWidget {
  @override
  _MyFlexible createState() => _MyFlexible();
}

class _MyFlexible extends State<MyFlexible> {
  int screenTablette = 600;

  Widget _MobileView() {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Flexible(
          flex: 7,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _TabletView() {
    return Row(
      children: <Widget>[
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Flexible(
            flex: 7,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget theview;
    var sizedevice = MediaQuery.of(context).size.shortestSide;
    // TODO: implement build
    if (sizedevice > screenTablette) {
      theview = _TabletView();
    } else {
      theview = _MobileView();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: theview,
    );
  }
}
