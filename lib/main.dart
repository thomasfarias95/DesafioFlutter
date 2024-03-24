import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login.dart';


void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData (
         primarySwatch: Colors.blue
      ),
      home: Login(),
    );
  }
}







