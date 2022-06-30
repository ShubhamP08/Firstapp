import 'package:first/screens/2ndLogin_page.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        // "/": (context) => loginpage(),
        //       "/home": (context) => homepage(),
        "/": (context) => Loginp(),
      },
    );
  }
}
