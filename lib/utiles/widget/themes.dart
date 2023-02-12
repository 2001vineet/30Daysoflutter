

import 'package:flutter/material.dart';

class MyThemes{
   static ThemeData lightTheme(BuildContext context) => ThemeData(
   primarySwatch: Colors.deepPurple,
   appBarTheme: AppBarTheme(
   color: Colors.white,
   elevation: 0.0,
   iconTheme: IconThemeData(color: Colors.black),
       toolbarTextStyle: Theme.of(context).textTheme.bodySmall),
   );

   static ThemeData darkTheme(BuildContext context) => ThemeData(
     brightness: Brightness.dark
   );
}