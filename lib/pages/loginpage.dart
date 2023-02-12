import 'package:flutter/material.dart';
import 'package:flutterp/utiles/routes.dart';

class LoginPage extends StatefulWidget {

  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
           children : [
             Column(
               children: [
                 Image.asset("assets/images/login.png",
                   fit: BoxFit.cover,
                     ),
                  SizedBox(height: 20),
                    Text(
                   "WELCOME $name",
                   style: TextStyle(
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
                   SizedBox(
                   height: 20,
                 ),
                 Padding(
                   padding:const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
                   child: Column(
                     children: [
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: "Enter UserName",
                         labelText: "User Name",
                       ),
                       validator: (value){
                         if(value!.isEmpty){
                         return"Username can not be empty";
                         }
                         return null;
                       },
                       onChanged: (value){
                         name = value;
                         setState(() {

                         });
                       }
                     ),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: "Enter Password",
                         labelText: "Password",

                       ),
                       validator: (value){
                         if(value!.isEmpty){
                           return"Password can not be empty";
                         }
                         else if(value.length < 6){
                           return"Password at least 6 digit no ";
                         }
                         return null;
                       },
                     ),
                      SizedBox(
                       height: 40,
                     ),

                    Material(
                      color: Colors.deepPurple,
                        borderRadius:
                          BorderRadius.circular(changeButton ? 50:8),
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: changeButton?60 : 150,
                          height: 50,
                         // color: Colors.deepPurple,
                          alignment: Alignment.center,
                          child: changeButton?Icon(Icons.done,
                          color: Colors.white,
                          )
                          :Text("Login",
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                            // borderRadius:
                          //  BorderRadius.circular(changeButton ? 50:8),
                          ),
                        ),
                    ),
                    //  ElevatedButton(
                    //   child: Text('Login'),
                    //   style: TextButton.styleFrom(maximumSize: Size( 160,40)),
                    //   onPressed : () {
                    //    Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // ),

                   ],

                   ),

                 )
               ],
             )

            ],
    ),
        ),
      ));


  }
}
