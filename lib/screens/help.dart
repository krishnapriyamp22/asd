import 'package:flutter/material.dart';


class shared extends StatelessWidget {
  const shared({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text('Help'),
     ),
     body: ListView(
      children: [
        ListTile(
           leading: Icon(Icons.help),
           
             title: Text("Help",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: Icon(Icons.contactless_rounded),
           subtitle: Text("Questons? Need help?"),
              title: Text("Contact Us",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: Icon(Icons.privacy_tip),
         
              title: Text("Terms and Privacy Policy",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: Icon(Icons.info),
          
              title: Text("App info",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
     
       
        
      ],
    ),
         
      
  );
  }
}