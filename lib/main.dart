import 'package:flutter/material.dart';
import 'package:flutterp/pages/home_page.dart';
import 'package:flutterp/pages/loginpage.dart';
import 'package:flutterp/utiles/routes.dart';
import 'package:flutterp/utiles/widget/themes.dart';

void main() {
  runApp(Myapp());
}


class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme:MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context) => LoginPage(),
        MyRoutes.homeRoute:(context) => HomePage(),
        MyRoutes.loginRoutes:(context) => LoginPage(),


      },
      );

  }

}
