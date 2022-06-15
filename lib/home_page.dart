import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //data-types in dart
    //final:we declare it final value + as it is final value it doesn't give any warning
    //integer: takes the whole number
    int days = 30;
    //double: it takes decimal numbers or float numbers
    double pi = 3.14;
    //to print a string or multiple words we need to use {} as ${name}
    //to print a single character or word we don't need {}
    String name = "Tushar Kant Behera";
    //boolean value (true or false)
    bool ismale = true;
    //num: it takes both the value integer and double/float
    num temp = 30.5;
    //var: compiler automatically decides the data type of the variable based on the value we assign to it.
    var day = "wednesday";
    //const: it defines the constant or the value doesn't change through out the program
    const p = 3.14;
    //final: in this we can add or modify the list but in const we can't modify

    //scaffold widget have different type and parts in dart like body,head,appbar,drawer
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          //to print the values we use $variable-name
          //or we can use + as we use in java and print the statement
          child: Text(
              "Welcome to flutter Data Types: Integer $days Double: $pi String: ${name}"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
