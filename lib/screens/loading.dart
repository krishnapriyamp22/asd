import 'package:flutter/material.dart';

import '../widget/login.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => ScreenSplashState();
}

class ScreenSplashState extends State<ScreenSplash> {

  @override
  void initState() {
    gotoLogin();

    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
        Padding(
          padding: EdgeInsets.all(20.0),
        child: Text("Loading...."),

      ),
        ],
       )
       )
    );

  }
  Future<void> gotoLogin() async{
  
    await Future.delayed(Duration(seconds: 3));
    
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> ScreenLogin()));
  }
}