import 'package:first/widgets/drawer.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int day = 13;
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily App"),
      ),
      body: Center(
        child: Container(child: Text("Welcome to Flutter $day")),
      ),
      drawer: my_drawer(),
    );
  }
}
