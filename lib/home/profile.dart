import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecom/auth.dart';

class Profie extends StatefulWidget {
  const Profie({super.key });

  @override
  State<Profie> createState() => _ProfieState();
}

class _ProfieState extends State<Profie> {
  final User? user = Auth().currentUser ;
  Future<void> signOut ()async{
    await Auth().signOut();
  }
  Widget _title() {
    return const Text("Firebase auth ");
  }
  Widget _userId() {
    return  Text(user?.email ?? "user email " );
  }
  Widget _signoutButtom() {
    return  ElevatedButton(onPressed: signOut,child : Text('sign out'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _title(),
            _userId(),
            _signoutButtom(),

          ],
        ),
      ),
    );
  }
}
