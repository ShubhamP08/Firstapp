import 'package:first/Utils/routes.dart';
import 'package:first/screens/home_page.dart';
import 'package:first/screens/login_page.dart';
import 'package:first/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Mytheme.lightTheme(context),
      darkTheme: Mytheme.darkTheme(context),
      routes: {
        "/": (context) => loginpage(),
        Myroutes.LoginRoute: (context) => loginpage(),
        Myroutes.HomeRoute: (context) => homepage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
