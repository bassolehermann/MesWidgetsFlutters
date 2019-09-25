import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySizeBox extends StatefulWidget {
  @override
  _MySizeBox createState() => _MySizeBox();
}

class _MySizeBox extends State<MySizeBox> {
  var hauteur=20.0;
   void incre(){
     setState(() {
       hauteur=hauteur+20;
     });
   }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBox'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 200,
            width: 500,
            color: Colors.black54,
          ),
          SizedBox(height: hauteur,),
          Container(
            height: 200,
            width: 500,
            color: Colors.blueAccent,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incre,
        child: Icon(Icons.send),
      ),
    );
  }
}
