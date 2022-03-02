import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int day = 13;
    return Scaffold(
      appBar: AppBar(
        title: Text("Gamer"),
      ),
      body: Center(
        child: Container(child: Text("Welcome to Flutter $day")),
      ),
      drawer: Drawer(),
    );
  }
}
