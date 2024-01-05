import 'package:flutter/material.dart';

class MyWidget9 extends StatefulWidget {
  const MyWidget9({super.key});

  @override
  State<MyWidget9> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       title: Text('Notifications'),
        ),
       

        body: ListView(
      children: [
        ListTile(
           
           subtitle: Text("play sounds for incoming and outgoing messages"),
              title: Text("Conversation tones",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
        ListTile(
           
           subtitle: Text("Default(waterDrop_preview.ogg)"),
              title: Text("Notificatin tones",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           
           subtitle: Text("Default"),
              title: Text("Vibrate",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),ListTile(
           
           subtitle: Text("Show notification for reaction to messages you send "),
              title: Text("Reaction Notification",style:TextStyle(fontSize: 18) ,),
              onTap: (){},
        ),
       
        
      ],
    ),
        );
  }
}