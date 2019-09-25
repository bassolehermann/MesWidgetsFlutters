import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyOpacity extends StatefulWidget {
  @override
  _MyOpacity createState() => _MyOpacity();
}

class _MyOpacity extends State<MyOpacity> {
  double opacite = 1.0;
  void visibilite() {
    setState(() {
      opacite = opacite == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Opactity'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: Opacity(
          opacity: opacite,
          child: Container(
            height: 200.0,
            width: 200.0,
            color: Colors.red,
            child: GestureDetector(
              onTap: visibilite,
            ),
          ),
        ),
      ),
    );
  }
}
