import 'package:flutter/material.dart';
import 'package:latihankoneksiapi/user_model.dart';

import 'postresort_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult postResult = null;
  User user = null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Api Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
                (user != null) ? user.id + " |" + user.name : "Tidak ada data"),
            RaisedButton(
              onPressed: () {
                User.connectToAPI("5").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("GET"),
            )
          ],
        ),
      ),
    ));
  }
}
