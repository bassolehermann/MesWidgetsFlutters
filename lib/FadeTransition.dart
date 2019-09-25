import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyFadeTransition extends StatefulWidget {
  @override
  _MyFadeTransition createState() => _MyFadeTransition();
}

class _MyFadeTransition extends State<MyFadeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    animation = Tween(begin: 0.0, end: 1.0).animate((controller));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeTransition'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            height: 200.0,
            width: 200.0,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}
