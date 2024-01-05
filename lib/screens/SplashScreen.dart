
import 'package:app1/main.dart';
import 'package:app1/screens/home.dart';
import 'package:app1/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




class SplashScreen extends StatefulWidget {
  
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    checkLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(backgroundColor: Colors.blue,strokeWidth: 10,color: Colors.purple),

            
            SizedBox(height: 20,),
            Text('Loading....')
          ],
        ),
      ),
    );
  }

  void loginPage()async{
    await Future.delayed(Duration(seconds: 3));
     Navigator.pushReplacement(context,MaterialPageRoute(builder: (ctx)=> ScreenLogin()));
  }
  void HomePage()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context,MaterialPageRoute(builder:(ctx)=> homescreen()));
  }


  Future<void> checkLogin(BuildContext context) async{
    final _shared =await SharedPreferences.getInstance();
   
    final _login=_shared.getBool(save_key);
    if(_login==null||_login==false){
     loginPage();
    }
    else{
      HomePage();
    }
  
  
  }
}
