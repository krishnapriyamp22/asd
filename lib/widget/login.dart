import 'package:flutter/material.dart';
import '../screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app1/main.dart';
class ScreenLogin extends StatefulWidget {
   ScreenLogin({super.key});



  @override
  State<ScreenLogin> createState() => _MyWidget3State();
}

class _MyWidget3State extends State<ScreenLogin> {
  TextEditingController user=TextEditingController();
  TextEditingController passwrd=TextEditingController();
  
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        
    body: Padding(
          padding: EdgeInsets.all(30.0),
          child: Center(
        child: Column(
           mainAxisAlignment:MainAxisAlignment.center,
              children: [
                
                TextField(
                   maxLength: 20,
                   controller: user,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: "user name",
                    hintText:  "Enter Username",
                   prefixIcon: Icon(Icons.man),
                    suffixIcon: Icon(Icons.verified_user),
                     helperText: "Enter Username characters",
                ),
                ),
                SizedBox(
                  height: 30,
                ),

                 TextField(
                   maxLength: 10,
                   controller: passwrd,
                    obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    ),
                    labelText: "Password",
                    hintText:  "Enter password",
                   prefixIcon: Icon(Icons.password),
                    suffixIcon: Icon(Icons.verified_user),
                     helperText: "Atleast 6 characters ",
                      
                ),
                ),
                 SizedBox(
                  height: 50,
                ),
              
                ElevatedButton(onPressed: (){
                  checkpassword(context);
                },
                
                
                 child:Text('log in',style: TextStyle(fontSize:20 ),)),
              ]
            ),
          )
    ));
          
  }
  Future<void> checkpassword(BuildContext context) async {
     String user_name=user.text;
     String Password=passwrd.text;
     if(user_name=='kris'&& Password=='123'){
      final _shared = await  SharedPreferences.getInstance();
     await _shared.setBool(save_key,true );
    Navigator.of(context).pushReplacement( MaterialPageRoute(builder: ((context) => homescreen())));
     }else{
      final _errorMessage='username or password does not match';
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(_errorMessage),behavior:
      SnackBarBehavior.floating,margin:  const EdgeInsets.all(10),
      duration: Duration(seconds: 2),));
     }
     
     }
}