import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAnimatedSwitcher extends StatefulWidget {
  @override
  _MyAnimatedSwitcher createState() => _MyAnimatedSwitcher();
}

class _MyAnimatedSwitcher extends State<MyAnimatedSwitcher> {
  bool verification=true;

 Widget w1=Container(key: UniqueKey(), color: Colors.blueAccent,height: 300.0,width: 300.0,);
 Widget w2=Container(key: UniqueKey(),  color: Colors.red,height: 300.0,width: 300.0,);

  void positionchange() {
    setState(() {
      verification=!verification;

    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body:Center(
        child: AnimatedSwitcher(
          duration: Duration(seconds: 1),
          transitionBuilder: (Widget child,Animation<double>animation){
            return ScaleTransition(child: child,scale:  animation,);
          },
          child: verification ? w1 : w2,
        ),
      )


      ,
      floatingActionButton: FloatingActionButton(
        onPressed: positionchange,
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.send),
      ),
    );
  }
}
