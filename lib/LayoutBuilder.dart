import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyLayoutBuilder extends StatefulWidget {
  @override
  _MyLayoutBuilder createState() => _MyLayoutBuilder();
}

class _MyLayoutBuilder extends State<MyLayoutBuilder> {
  int screenTablette = 450;

  Widget _MobileView() {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.yellow,
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
        title: Text('LayoutBuilder'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch("https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Flexible.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: theview,
    );
  }
}
