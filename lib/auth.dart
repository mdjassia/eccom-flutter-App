

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Users.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  final FirebaseFirestore  db = FirebaseFirestore.instance;
  User? get currentUser => _firebaseAuth.currentUser;
  String? get uidd => _firebaseAuth.currentUser?.uid ;
  DateTime? get datee => _firebaseAuth.currentUser?.metadata.creationTime;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> createUserWithEmailAndPassword(
      {
    required String email,
    required String password ,
    required String name ,
    //required String photo ,
    //required var phoneNumber ,
      }
      )
  async {
    await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password );
    //update the username
    await FirebaseAuth.instance.currentUser?.updateDisplayName(name);
    //await FirebaseAuth.instance.currentUser?.updatePhotoURL(photo);
    //await FirebaseAuth.instance.currentUser?.updatePhoneNumber(phoneNumber);
    await FirebaseAuth.instance.currentUser?.reload() ;


    ///////  ajouter a la collection users et ajouter chaque user inscrit a la base de donnée
    final docRef = db.collection('Users').doc(email);
    Users user =
    Users(name: name, email: email ,  id: uidd , dateCreation:  datee as DateTime , image: "https://firebasestorage.googleapis.com/v0/b/ecom-92ed1.appspot.com/o/User-Profile-PNG.png?alt=media&token=1f9b8a33-b17d-4312-81f0-e50d72a05de3");


    await docRef.set(user.toJson()).then(
            (value) => log("User Added successfully!"),
        onError: (e) => log("Error Adding User: $e"));

  }

  Future<void> signInUserWithEmailAndPassword({
    required String email,
    required String password
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password) ;


  }
  Future<void> signOut ()async{
    await _firebaseAuth.signOut();
  }
}