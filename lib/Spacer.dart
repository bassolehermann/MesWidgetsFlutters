import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySpacer extends StatefulWidget {
  @override
  _MySpacer createState() => _MySpacer();
}

class _MySpacer extends State<MySpacer> {
  var left = 1;


  void fleft() {
    setState(() {
      left++;
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: new Row(
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.red,
            ),
            Spacer(
              flex: left,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.green,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fleft,
        child: Icon(Icons.arrow_forward),
      ),

    );
  }
}
