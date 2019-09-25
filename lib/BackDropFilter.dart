import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyBackDropFilter extends StatefulWidget {
  @override
  _MyBackDropFilter createState() => _MyBackDropFilter();
}

double height = 50.0;

class _MyBackDropFilter extends State<MyBackDropFilter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BackDropFilter'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(

        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0,),
          child: Container(
            color: Colors.black.withOpacity(0.1),
            child: Image.network(
                "https://cdn.pixabay.com/photo/2017/03/18/16/42/video-game-2154473_960_720.png"),
          ),
        ),
      ),
    );
  }
}
