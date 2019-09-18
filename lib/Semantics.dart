import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySemantics extends StatefulWidget {
  @override
  _MySemantics createState() => _MySemantics();
}

class _MySemantics extends State<MySemantics> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text('Semantics'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),

      body: MaterialApp(
        showSemanticsDebugger: true,
        home: sdebug(),
      ),
    );
  }
}
class sdebug extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title:Text("debug"),),
      body: Center(
        child: Container(
          height: 200.0,
          width: 200.0,
          color: Colors.blue,
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(Icons.send),
      ),
    );
  }

}
