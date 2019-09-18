import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedIcon extends StatefulWidget {
  @override
  _MyAnimatedIcon createState() => _MyAnimatedIcon();
}

class _MyAnimatedIcon extends State<MyAnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  bool isFo = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
  }

  verification() {
    if (isFo) {
      controller.reverse();
    } else {
      controller.forward();
    }
    isFo = !isFo;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedIcon"),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(""),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: new Center(
            child: FloatingActionButton(
          onPressed: verification,
          backgroundColor: Colors.blue,
          child: AnimatedIcon(
            icon: AnimatedIcons.pause_play,
            progress: animation,
          ),
        ))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
