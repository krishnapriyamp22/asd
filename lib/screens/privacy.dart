import 'package:flutter/material.dart';

class ScreenPrivacy extends StatelessWidget {
  const ScreenPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Privacy'),
        ),


        body: ListView(
      children: [
        ListTile(
           leading: Icon(Icons.key),
           subtitle: Text("Security notifications,change number"),
              title: Text("Account",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: Icon(Icons.lock),
           subtitle: Text("Block contacts,disppearing messages"),
              title: Text("Privacy",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: Icon(Icons.circle_notifications),
           subtitle: Text("Create,edit,profile photo"),
              title: Text("Avatar",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           leading: Icon(Icons.key),
           subtitle: Text("Theme,wallpapers,chat history"),
              title: Text("Chats",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: Icon(Icons.notification_add),
           subtitle: Text("message,group & call tones"),
              title: Text("Notification",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: Icon(Icons.storage),
           subtitle: Text("Network usage,auto-download"),
              title: Text("Storage and data",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           leading: Icon(Icons.language),
           subtitle: Text("English(phone's language)"),
              title: Text("Account",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        )
      ],
    ),
         
      
  );
  }
}