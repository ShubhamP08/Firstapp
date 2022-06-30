import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Login Page",
            style: TextStyle(
                fontSize: 60, color: Colors.blue, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
