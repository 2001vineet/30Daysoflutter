import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "codepur";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.redAccent,
        title: Text("catalog app"),
      ),
      body:Center(
        child: Container(
          child: Text("My name is vineet"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
