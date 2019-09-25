import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class MyWrap extends StatefulWidget{
  @override
  _MyWrap createState()=>_MyWrap();
}

class _MyWrap extends State<MyWrap>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Wrap"),actions: <Widget>[
        new GestureDetector(
          onTap: () => launch(
              "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
          child: Icon(Icons.link),
        )
      ],
      ),

      body: new Center(
        child: Wrap(
          children: <Widget>[
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.orange,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.white,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }


}