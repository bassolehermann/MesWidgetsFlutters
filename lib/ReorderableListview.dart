import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyReorderableListView extends StatefulWidget {
  @override
  _MyReorderableListView createState() => _MyReorderableListView();
}

List langage = ["Dart", "JavaScript", "Python", "Java", "Go", "PHP", "Ruby"];

class _MyReorderableListView extends State<MyReorderableListView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('MyReorderableListView'),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch(""),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: Center(
          child: ReorderableListView(
            children: List.generate(langage.length, (index) {
              return ListTile(
                key: ValueKey("value$index"),
                title: Text(
                  langage[index],
                  style: TextStyle(fontSize: 25.0),
                ),
                leading: Icon(
                  Icons.view_headline,
                  size: 30.0,
                ),
              );
            }),
            onReorder: (int oldIndex, int newIndex) {
              setState(() {
                _majList(oldIndex, newIndex);
              });
            },
          ),
        ));
  }

  void _majList(int oldIndex, int newIndex) {
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }

    final item = langage.removeAt(oldIndex);
    langage.insert(newIndex, item);
  }
}
