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
      color: Colors.white,
      child: Column(
        //adding image to the tab first we change the pubspec.yaml and add the image folder 
        //then we can access the image here easily
        //adding the dependency and assets
        //for downloading image we can use undraw and for fonts pub.dev
        children: [
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text("Welcome",
          style:TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 20.0,
          ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0) ,
          child:Column(
          children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username",
          )
         ),
          TextFormField(
            //to not see the password or present it in *** form 
            obscureText:true,
            decoration: InputDecoration(
              hintText: "Password",
              labelText: "Password",
          )
         ),
         SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            child: Text("Login"),
            style:TextButton.styleFrom(),
            onPressed: () {
              print("Hey")
            },          
          ),

         ],
        )
        )
        ],
        )
    );
  }
}
