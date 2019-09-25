import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDismissible extends StatefulWidget {
  @override
  _MyDismissible createState() => _MyDismissible();
}

List langage = ["Dart", "JavaScript", "Python", "Java", "Go", "PHP", "Ruby"];

class _MyDismissible extends State<MyDismissible> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: langage.length,
          itemBuilder: (BuildContext context, i) {
            return Dismissible(
              child: Container(
                color: Colors.blueAccent,
                child: ListTile(
                  title: Text(langage[i],style: TextStyle(color: Colors.white,fontSize: 25.0),),
                ),
                margin: EdgeInsets.only(bottom: 5.0),
              ),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.blueAccent,
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: Icon(
                  Icons.delete_forever,
                  size: 30.0,
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(bottom: 5.0),
              ),
              key: ValueKey(langage[i]),
              onDismissed: (direction) {
                setState(() {
                  langage.removeAt(i);
                });
              },
            );
          }),
    );
  }
}
