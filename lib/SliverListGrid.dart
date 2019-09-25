import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MySliver extends StatefulWidget {
  @override
  _MySliver createState() => _MySliver();
}

class _MySliver extends State<MySliver> {
  List<Widget> lisWidget = [
    Container(color: Colors.red, height: 150.0),
    Container(color: Colors.purple, height: 150.0),
    Container(color: Colors.green, height: 150.0),
    Container(color: Colors.brown, height: 150.0),
    Container(color: Colors.pink, height: 150.0),
    Container(color: Colors.orange, height: 150.0),
    Container(color: Colors.red, height: 150.0),
    Container(color: Colors.white, height: 150.0),
    Container(color: Colors.yellow, height: 150.0),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('SliverListGrid'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(
                  "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Center(
            child: CustomScrollView(
          slivers: <Widget>[


          // Sliverliste avec un builder
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return lisWidget[index];
                },
                childCount: lisWidget.length,
              ),
            ),

            //Slivergrid avec un builder
            SliverGrid(

              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: lisWidget.length),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, i) {
                  return lisWidget[i];
                },
                childCount: lisWidget.length,
              ),
            ),

            //Sliverliste permettant de modifier la hauteur des lignes
            SliverFixedExtentList(
              itemExtent: 100.0,
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, i){
                    return lisWidget[i];
                  },
                childCount: lisWidget.length,

              )
            ),
          ],
        )));
  }
}
