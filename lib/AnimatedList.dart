import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UserModel {
  UserModel({this.name});
  String name;
}

List<UserModel> listData = [];

class MyAnimatedList extends StatefulWidget {
  @override
  _MyAnimatedList createState() => _MyAnimatedList();
}

class _MyAnimatedList extends State<MyAnimatedList>
    with SingleTickerProviderStateMixin {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final formKey = new GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void addUser() {
    int index = listData.length;
    listData.add(
      UserModel(
        name: myController.text,
      ),
    );
    _listKey.currentState
        .insertItem(index, duration: Duration(milliseconds: 500));

    print(listData[0].name);
  }

  void deleteUser(int index) {
    var register = listData.removeAt(index);
    _listKey.currentState.removeItem(
      index,
      (BuildContext context, Animation<double> animation) {
        return FadeTransition(
          opacity:
              CurvedAnimation(parent: animation, curve: Interval(0.5, 1.0)),
          child: SizeTransition(
            sizeFactor:
                CurvedAnimation(parent: animation, curve: Interval(0.0, 1.0)),
            axisAlignment: 0.0,
            child: _buildItem(register),
          ),
        );
      },
      duration: Duration(milliseconds: 600),
    );
  }

  Widget _buildItem(UserModel register, [int index]) {
    return ListTile(
      key: ValueKey<UserModel>(register),
      title: Text(
        register.name,
        style: TextStyle(color: Colors.black),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.blue,
      ),
      onLongPress: index != null ? () => deleteUser(index) : null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AnimatedList"),
          actions: <Widget>[
            new GestureDetector(
              onTap: () => launch("https://github.com/bassolehermann/MesWidgetsFlutters/blob/master/lib/AnimatedList.dart"),
              child: Icon(Icons.link),
            )
          ],
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 8,
              child: AnimatedList(
                key: _listKey,
                initialItemCount: listData.length,
                itemBuilder:
                    (BuildContext context, int index, Animation animation) {
                  return FadeTransition(

                    opacity: animation,
                    child: _buildItem(listData[index], index),

                  );
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: new Form(
                key: formKey,
                child: TextField(
                  controller: myController,
                ),
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: addUser,
          child: Icon(Icons.send),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
