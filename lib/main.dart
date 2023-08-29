import 'package:ecom/home/detail1.dart';
import 'package:flutter/material.dart';
import 'landing/landing.dart';
import 'home/home.dart';

import 'package:ecom/Sign Up/signUp.dart';
import 'Sign In/SignIn.dart';


import 'Widget_Tree.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main()async {
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
    return  MaterialApp(
      // home: signUp(),
      initialRoute: '/',
      routes: {

        '/' :(context) => const Landing(),
        '/Widget_Tree' :(context) => const Widget_Tree(),
        '/sign Up' : (context) => const signUp(),
        '/sign In' : (context) => const SignIn(),
        '/Home' : (context)  => const Home(),
        '/Detail1' :(context)  => const Detail1(),

      },
      debugShowCheckedModeBanner: false ,
    );
}
}


