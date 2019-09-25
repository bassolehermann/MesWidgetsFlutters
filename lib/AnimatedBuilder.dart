import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class MyAnimatedBuilder extends StatefulWidget {
  @override
  _MyAnimatedBuilder createState() => _MyAnimatedBuilder();
}

class _MyAnimatedBuilder extends State<MyAnimatedBuilder> with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;
  var variable ;
  void changer() {
    setState(() {
     controller.forward();
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=AnimationController( vsync: this, duration: Duration(seconds: 1));
    animation=Tween(begin: 0.0,end: pi/4).animate(controller);

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedBuilder'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
          child: AnimatedBuilder(
            animation: controller ,
            builder: (context,child){
              return Transform.rotate(
                angle: animation.value,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.brown,
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: changer,
        child: Icon(Icons.send),
      ),
    );
  }
}
