import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedContainer extends StatefulWidget {
  @override
  _MyAnimatedContainer createState() => _MyAnimatedContainer();
}

double height = 50.0;

class _MyAnimatedContainer extends State<MyAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    void anime() {
      setState(() {
        height = height == 300.0 ? 50 : 300.0;
      });
    }

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: AnimatedContainer(
          color: Colors.pink,
          duration: Duration(seconds: 2),
          height: height,
          width: 100.0,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: anime,
        child: Icon(Icons.send),
      ),
    );
  }
}
