import 'package:ecom/Sign%20In/SignIn.dart';
import 'package:ecom/Sign%20Up/signUp.dart';
import 'package:ecom/home/home.dart' ;
import 'package:ecom/landing/landing.dart';
import 'package:flutter/material.dart';
import 'package:ecom/auth.dart';
import 'package:ecom/authenticate.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Widget_Tree extends StatefulWidget {
  const Widget_Tree({super.key});

  @override
  State<Widget_Tree> createState() => _Widget_TreeState();
}

class _Widget_TreeState extends State<Widget_Tree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges,
      builder: (context , snapshot){
        if(snapshot.hasData){
          return Home();
        }
        else{
          return Authentcate();
        }
      },
    );
  }
}
