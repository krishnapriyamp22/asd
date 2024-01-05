

import 'package:app1/main.dart';
import 'package:app1/screens/privacy.dart';
import 'package:app1/screens/profile.dart';
import 'package:app1/screens/notification.dart';
import 'package:app1/screens/help.dart';
import 'package:app1/widget/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homescreen extends StatefulWidget {
   homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}
class _homescreenState extends State<homescreen> {
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer: Drawer
(
   backgroundColor: Colors.white,
   
   child: Column(
    children: [
    UserAccountsDrawerHeader(accountName: Text('Krishnapriya  mp'), accountEmail: Text('abc@gmail.com'),currentAccountPicture: CircleAvatar(
      backgroundImage: AssetImage('images/img10.jpg'),
    ),),
    ListTile(
      leading: Icon(Icons.person),
      title: Text('Profile'),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Screenprofile()));
      },

    ),
    ListTile(
      leading: Icon(Icons.lock),
      title: Text('Privacy'),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ScreenPrivacy()));
      },
    ),ListTile(
      leading: Icon(Icons.help),
      title: Text('help'),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>shared()));
      },
    ),ListTile(
      leading: Icon(Icons.notifications_active),
      title: Text('Notifications'),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>MyWidget9()));
      },
      
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text('Logout'),
      onTap: (){
       sigout(context);
      },
    ),
    
      
    ],
   ),
),
       appBar:AppBar(
          //text
          title: Text("HOME"),
          centerTitle: true,

          //bg color
          backgroundColor: Color.fromARGB(255, 47, 140, 211),

           //Actions
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt))
          ],

          //shape
          shape: RoundedRectangleBorder(
            borderRadius:BorderRadius.vertical(bottom: Radius.circular(30)) ),

            //Elevation
            elevation: 30,
       ),

        
        body: ListView(
          
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                   
                    ListTile(
                      onTap: (){
                       alert(context); 
                      },
                      title: Text("Kalyani priyadarshan"
                      ),
                    
                      subtitle: Text("23 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://1.bp.blogspot.com/-LbgpSwj_IBw/YLop-bYpqII/AAAAAAAANOg/jOouoFerxXYbmVzoALWkemdvZl3jdiN1wCLcBGAsYHQ/s640/Kalyani-Priyadarshan-Photos-1.jpg'),
                      ),
                      trailing: Icon(Icons.more_vert),
                      
                    ),
                    ListTile(
                      title: Text("my new movie shooting starts in october 8....",
                      style: TextStyle(
                        fontStyle: FontStyle.italic
                      ),
                      ),
                    ),
                    Image.asset('images/img2.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       
                     IconButton(onPressed: () {},icon: Icon(Icons.thumb_up),),
                     IconButton(onPressed: () {},icon: Icon(Icons.thumb_down),),
                     ],
                    )
                  ],
                ),
              ),
            ),
             Padding(
             padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Zayn Malik"),
                      subtitle: Text("45 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://pixelz.cc/wp-content/uploads/2018/08/zayn-malik-portrait-uhd-4k-wallpaper.jpg'),
            
                      ),
                      trailing: Icon(Icons.more_vert),
                      
                    ),
                    ListTile(
                      title: Text(".......!!!! ",
                       style: TextStyle(
                        fontStyle: FontStyle.italic
                      ),),
                    ),
                    Image.asset('images/img9.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       IconButton(onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(( SnackBar(content: Text('photo liked'),
                        duration: Duration(seconds: 1))
                        ));
                       },icon: Icon(Icons.thumb_up),),
                     IconButton(onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(( SnackBar(content: Text('photo Disliked'),
                        duration: Duration(seconds: 1))
                        ));
                     },icon: Icon(Icons.thumb_down),),
                     ],
                    )
                  ],
                ),
              ),
            ),
              Padding(
             padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("fashion world"),
                      subtitle: Text("1 hour ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://akns-images.eonline.com/eol_images/Entire_Site/201891/rs_634x1024-181001135635-634-Best-Looks-Paris-Fashion-Week-Elie-Saab-5.jpg'),
            
                      ),
                      trailing: Icon(Icons.more_vert),
                      
                    ),
                    ListTile(
                      title: Text("my new design",
                      style: TextStyle(
                        fontStyle: FontStyle.italic
                      ),),),
                    
                    Image.asset('images/img5.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       IconButton(onPressed: () {},icon: Icon(Icons.thumb_up),),
                     IconButton(onPressed: () {},icon: Icon(Icons.thumb_down),),
                     ],
                    )
                  ],
                ),
              ),
            ),
           
             Padding(
             padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    ListTile(
                      title: Text("LONDON"),
                      subtitle: Text("45 minutes ago"),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://wallup.net/wp-content/uploads/2016/01/72332-deer-nature-animals.jpg'),
            
                      ),
                      trailing: Icon(Icons.more_vert),
                      
                    ),
                    ListTile(
                      title: Text("vacation at london ",
                       style: TextStyle(
                        fontStyle: FontStyle.italic
                      ),),
                    ),
                    Image.asset('images/img4.jpg'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       IconButton(onPressed: () {},icon: Icon(Icons.thumb_up),),
                     IconButton(onPressed: () {},icon: Icon(Icons.thumb_down),),
                     ],
                    )
                  ],
                ),
              ),
            ),
          ]
        ),
        
        
    );
  }
  void alert(BuildContext context){
    showDialog(context: context, builder: (context){
        return AlertDialog(
                            title: Text('kalyani'),
                            content: Text('kalyani is an actress in malayalam movie industry'),
                            actions: [
                              ElevatedButton(onPressed: (){
                                Navigator.pop(context);
                              }, child: Text('Back'))
                            ],
    
                          );
    }
    );
  }
  //bldc object  ctx parameter
  void sigout(BuildContext context){
    showDialog(context: context, builder: (context) {  //ctx para builder fun
      return AlertDialog(
        title: Text('Logout'),
        content: Text('You want logout this App'),
        actions: [
          ElevatedButton(onPressed: () {
            Logouting(context);
          }, child: Text('Yes')),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
           }, child: Text('No'))
        ],
      );
    },);
  }
   Logouting(BuildContext ctx) async{
    Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (ctx) => ScreenLogin()),
                  (route) => false, // This line removes all previous routes from the stack
                );
    final _shared =await SharedPreferences.getInstance();
    _shared.setBool(save_key, false);
  }
}