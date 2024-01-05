import 'package:flutter/material.dart';

class Screenprofile extends StatelessWidget {
  const Screenprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('My Profile'),
       ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
         CircleAvatar(
           backgroundImage: AssetImage('images/img11.jpg'),
           maxRadius: 120,
         ),
         ListTile(
           onTap: (){},
           leading: Icon(Icons.person),
           title: Text('Name',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: Text('krishnapriya mp',style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic, fontWeight: FontWeight.w700,color: Colors.black),),
           trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
         ), ListTile(
           onTap: (){},
           leading: Icon(Icons.mail),
           title: Text('Email',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: Text('priya2002@gmail.com',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
           trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
         ), ListTile(
           onTap: (){},
           
           leading: Icon(Icons.phone),
           title: Text('Phone',style: TextStyle(fontSize: 15,color: Colors.black54),),
           subtitle: Text('+91 9895167053',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black),),
           trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
         ),
          
       ],
     ) ,
    
         
      
  );
  }
}