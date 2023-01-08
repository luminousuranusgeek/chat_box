import 'package:chat/pages/inside_page/chat_page.dart';
import 'package:chat/pages/inside_page/page1.dart';
import 'package:chat/pages/inside_page/page2.dart';
import 'package:chat/pages/inside_page/page3.dart';
import 'package:chat/pages/inside_page/page4.dart';
import 'package:chat/pages/login_page.dart';
import 'package:chat/pages/signin_page.dart';
import 'package:chat/pages/splash_screen.dart';
import 'package:chat/pages/welcome_screen.dart';
import 'package:chat/pages/home_inside.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const SplashScreen(),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        SigninPage.routeName: (context) => SigninPage(),
        ChatScreen.routeName: (context) => ChatScreen(),
        Page1.routeName: (context) => Page1(),
        Page2.routeName: (context) => Page2(),
        Page3.routeName: (context) => Page3(),
        Page4.routeName: (context) => Page4(),
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        HomeInside.routeName:(context) => HomeInside(),
      },
    );
  }
}
