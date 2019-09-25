import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyTable extends StatefulWidget {
  @override
  _MyTable createState() => _MyTable();
}

double height = 50.0;

class _MyTable extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Center(
        child: Table(
          children: [
            TableRow(
              children: [
                Container(
                  color: Colors.red,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.blue,
                  height: 150.0,
                  width: 150.0,
                ),

                Container(
                  color: Colors.green,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.pink,
                  height: 150.0,
                  width: 150.0,
                )
              ],
            ),
            TableRow(
              children: [
                Container(
                  color: Colors.yellow,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.black,
                  height: 150.0,
                  width: 150.0,
                ),

                Container(
                  color: Colors.orange,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.blue,
                  height: 150.0,
                  width: 150.0,
                )
              ],
            ),
            TableRow(
              children: [
                Container(
                  color: Colors.indigoAccent,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.brown,
                  height: 150.0,
                  width: 150.0,
                ),

                Container(
                  color: Colors.grey,
                  height: 150.0,
                  width: 150.0,
                ),
                Container(
                  color: Colors.greenAccent,
                  height: 150.0,
                  width: 150.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
