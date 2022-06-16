import 'package:flutter/material.dart';

//in class name the first letter and the first letter of every word is capital
//BuildApp
//in function the first letter have to be small and coming words first letter will be capital
//buildApp
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login Page",
          style: TextStyle(
            fontSize: 20,
            // color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
