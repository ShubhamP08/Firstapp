import 'package:first/Utils/routes.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/undraw_secure_login_pdn4.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          "Welcome To Login Page",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter User Name", labelText: "Enter Name"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Enter Password"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.HomeRoute);
                },
                child: Text("Login"),
                style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              )
            ],
          ),
        )
      ],
    ));
  }
}
