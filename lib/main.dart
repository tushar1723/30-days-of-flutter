import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

//entry point main() app
void main() {
  runApp(MyApp());
}

//in flutter everything is designed as tree using widgets
//Function
class MyApp extends StatelessWidget {
  //@override someone have already  build the function but he ask us to write again the codes or work that we want the application to have
  @override
  //Method
  //context
  Widget build(BuildContext context) {
    //if we remove the rupees parameter it will not give warning because of the use of optional parameter
    bringVegetable(plastic: true);
    return MaterialApp(
      //we make a widget homepage
      // home: HomePage(),
      //thememode it uses the theme mode according to the system/dark/light
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.light,
        //it gives color to the primary stuffs
        primarySwatch: Colors.red,
      ),
      //routes are use to tell the application the path or the way of the application like first it should show home page then login page,etc
      //in this we use the objects of the class HomePage(), we don't need to use new keyword as the compiler automatically comes to know that we are making an instances of a class or object
      //indeed we can use new there won't be any error.
      //initialroute can be used to set the initial value or path of the route
      initialRoute: "/",
      routes: {
        // "/" is basically the inital path set by compiler as first tab or page
        "/": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }

  //optional parameter like we give a default value that is taken when we doesn't give the actual argument
  //we use it using {}
  //for plastic we have not set the optional value and neither we pass it through the argument then there will be a trouble so we use @required
  //@required cpommad make it compulsory for the user to pass the actual argument for that parameter. else it will give warning
  bringVegetable({@required bool plastic = false, int rupees = 100}) {}
}
