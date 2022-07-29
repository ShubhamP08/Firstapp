import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class my_drawer extends StatefulWidget {
  const my_drawer({Key? key}) : super(key: key);

  @override
  State<my_drawer> createState() => _my_drawerState();
}

class _my_drawerState extends State<my_drawer> {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
    return Drawer(
      
      child: Container(
        color: Colors.cyan,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyan),
                  margin: EdgeInsets.zero,
                  accountName: Text("Shubham Prajapati",),
                  accountEmail: Text("shubhamprajapati511@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl), 
                  ),
                ),),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white)
                  ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white)
                  ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail_solid,
                color: Colors.white,
              ),
              title: Text(
                "E-Mail Me",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white)
                  ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.info_circle,
                color: Colors.white,
              ),
              title: Text(
                "Info",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white)
                  ),
            )
          ],
        ),
      ),
    );
  }
}
