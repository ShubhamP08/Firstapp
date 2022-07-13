import 'package:first/Utils/routes.dart';
import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String name = "";
  bool changeButton = false;
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
          "Welcome $name",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Enter Password"),
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, Myroutes.HomeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  margin: EdgeInsets.all(15),
                  width:changeButton?50: 150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done,color: Colors.white,) :Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      // shape: changeButton? BoxShape.circle:BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(
                        changeButton?50:10,
                      ),
                  ),
                ),
              ),

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, Myroutes.HomeRoute);
              //   },
              //   child: Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: Size(120, 40)),
              // )
            ],
          ),
        )
      ],
    ));
  }
}
