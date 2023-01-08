import 'package:chat/pages/inside_page/chat_page.dart';
import 'package:chat/pages/inside_page/page1.dart';
import 'package:chat/pages/inside_page/page2.dart';
import 'package:chat/pages/inside_page/page3.dart';
import 'package:chat/pages/inside_page/page4.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
final _auth = FirebaseAuth.instance;
class HomeInside extends StatefulWidget {
  static const String routeName = '/inside_page';
  const HomeInside({Key? key}) : super(key: key);

  @override
  State<HomeInside> createState() => _HomeInsideState();
}

class _HomeInsideState extends State<HomeInside> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(' Home Screen', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                _auth.signOut();
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout, color: Colors.white,))
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 722.9,
            color: Colors.pinkAccent,
            padding: EdgeInsets.all(10),
            child:
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink[100],

                    ),
                    child: IconButton( icon:Icon(Icons.code),
                    onPressed: (){
                      Navigator.pushNamed(context, ChatScreen.routeName);
                    },
                      color: Colors.white),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink[100],

                    ),
                    child: IconButton( icon:Icon(Icons.camera),
                      onPressed: (){
                        Navigator.pushNamed(context, Page1.routeName);
                      },
                      color: Colors.white),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink[100],

                    ),
                    child: IconButton( icon:Icon(Icons.sports_football_outlined),
                        onPressed: (){
                          Navigator.pushNamed(context, Page2.routeName);
                        },
                        color: Colors.white),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink[100],

                    ),
                    child: IconButton( icon:Icon(Icons.music_note_outlined),
                        onPressed: (){
                          Navigator.pushNamed(context, Page3.routeName);
                        },
                        color: Colors.white),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink[100],

                    ),
                    child: IconButton( icon:Icon(Icons.palette_outlined),
                        onPressed: (){
                          Navigator.pushNamed(context, Page4.routeName);
                        },
                        color: Colors.white),
                  ),
                ],
              ),

      ),
    ]
    )
    );

}
}
