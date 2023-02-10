import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
       children : [
         Column(
           children: [
             Image.asset("assets/images/login.png",
               fit: BoxFit.cover),
             SizedBox(height: 20),
              const Text(
               "welcome",
               style: TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
               ),
             ),
              const SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
               child: Column(children: const [
                 TextField(
                   decoration: InputDecoration(
                     hintText: "Enter UserName",
                     labelText: "User Name",
                   ),
                 ),
                 TextField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Enter Password",
                     labelText: "Password",
                   ),
                 ),
                  SizedBox(
                   height: 20,
                 ),
                ElevatedButton(
                  child: Text('Login'),
                  onPressed: BorderRadius.only
                )

               ],

               ),

             )
           ],
         )

        ],
    ));


  }
}
