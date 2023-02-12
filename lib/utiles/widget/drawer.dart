import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class MyDrawer extends StatelessWidget {
    const MyDrawer({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      final imageUrl = "https://assets.reedpopcdn.com/Spidey-PC-SIte.jpg/BROK/resize/1920x1920>/format/jpg/quality/80/Spidey-PC-SIte.jpg";
      return Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                accountName: Text("Vineet Jain"),
                accountEmail: Text("xyz123@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
              ),
              ),
               const ListTile(
                leading: Icon(CupertinoIcons.home,
                color: Colors.white,
                ),
                 title: Text("Home",
                   textScaleFactor: 1.5,
                   style: TextStyle(
                   color: Colors.white,
                 ),),

              ),
              const ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text("Mail",
                  textScaleFactor: 1.5,
                  style: TextStyle(
                    color: Colors.white,
                  ),),

              ),
            ],
          ),
        ),
      );


    }
  }
