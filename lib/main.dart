import 'package:flutter/material.dart';
import 'list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final GlobalKey debuger = GlobalKey();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mes Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mes Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Text(
                  "📲",
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
            Expanded(
              flex: 12,
              child: ListView.builder(
                  itemCount: item.length,
                  itemBuilder: (context, i) {
                    return FlatButton(
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => listwidget[i],
                        ),
                      ),
                      child: Text(
                        item[i],
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      color: Colors.grey,
                      padding: EdgeInsets.all(5.0),
                    );
                  }),
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
