import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAbsorbPointer extends StatefulWidget {
  @override
  _MyAbsorbPointer createState() => _MyAbsorbPointer();
}

class _MyAbsorbPointer extends State<MyAbsorbPointer> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AbsorbPointer'),
        actions: <Widget>[
          new GestureDetector(
            onTap: () => launch(
                "https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/Stack.dart"),
            child: Icon(Icons.link),
          )
        ],
      ),
      body: InkWell(
        onTap: (){},
        child: Center(
          child: AbsorbPointer(
            absorbing: false,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            ),
          ),
        ),
      )
    );
  }
}
