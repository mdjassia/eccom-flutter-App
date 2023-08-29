import 'Sign In/SignIn.dart';
import 'Sign Up/signUp.dart';
import 'package:flutter/material.dart';

class Authentcate extends StatefulWidget {
  const Authentcate({super.key});

  @override
  State<Authentcate> createState() => _AuthentcateState();
}

class _AuthentcateState extends State<Authentcate> {
  bool showSingIn = true ;
  void toggleView (){
    setState(() =>showSingIn = !showSingIn) ;
  }
  @override
  Widget build(BuildContext context) {
    if (showSingIn ){
      return SignIn(toggleView : toggleView);
    }
    else{
      return signUp(toggleView: toggleView);
    }
  }
}
