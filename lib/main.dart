
import 'package:flutter/material.dart';
import 'package:app1/screens/SplashScreen.dart';
 const save_key='userlogin';
 

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Demo App",
      home: SplashScreen()
    );
  }
}