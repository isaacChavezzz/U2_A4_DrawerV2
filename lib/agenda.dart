import 'package:chavezdrawerv2/drawer_menu.dart';
import 'package:flutter/material.dart';

class Agenda extends StatelessWidget {
  static const String routeName = '/agenda';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Isaac Chavez 0336",
            style: TextStyle(fontSize: 18, color: Colors.black)),
        backgroundColor: Colors.amber,
      ),
      drawer: DrawerMenu(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xffbb0ad2),
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xff15299f),
            width: 80.0,
            height: 80.0,
          ),
          Container(
            padding: const EdgeInsets.all(0.0),
            color: Color(0xff0889ff),
            width: 80.0,
            height: 80.0,
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
