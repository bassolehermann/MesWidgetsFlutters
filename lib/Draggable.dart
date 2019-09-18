import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDraggable extends StatefulWidget {
  @override
  _MyDraggable createState() => _MyDraggable();
}

class _MyDraggable extends State<MyDraggable> {
  List<Color> listcolor = [
    Colors.orange,
    Colors.red,
    Colors.white,
    Colors.yellow,
    Colors.green,
    Colors.blue
  ];
  Color couleur;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(""),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 8,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: listcolor.length,
                itemBuilder: (context, i) {
                  return Draggable<Color>(
                    data: listcolor[i],
                    child: Container(
                      height: 100,
                      width: 100,
                      color: listcolor[i],
                      margin: EdgeInsets.all(4.0),
                    ),
                    feedback: Container(
                      height: 100,
                      width: 100,
                      color: listcolor[i],
                    ),
                    childWhenDragging:
                        Container(height: 100, width: 100, color: Colors.grey),
                  );
                },
              )),
          Expanded(
              flex: 3,
              child: Container(
                child: DragTarget(
                  builder: (context, List<Color> accepted, rejected) {
                    return Container(
                      color: couleur,
                    );
                  },
                  onLeave: (data) {
                    return true;
                  },
                  onAccept: (data) {
                    setState(() {
                      couleur = data;
                    });
                  },
                ),
              )),
          Expanded(flex: 1, child: Container())
        ],
      ),
    );
  }
}
