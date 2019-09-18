import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyRichText extends StatefulWidget {
  @override
  _MyRichText createState() => _MyRichText();
}

class _MyRichText extends State<MyRichText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('RichText'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(""),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Center(
            child: Container(
          child: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: "OOhhhh les enfants Danger",
                  style: TextStyle(color: Colors.black)),
              TextSpan(
                  text: "Goum",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.green))
            ]),
          ),
        )));
  }
}
