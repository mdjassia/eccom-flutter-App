import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';

class Users {
  final String name;
  final String email;
  final String? id;
  final DateTime? dateCreation ;
  final String image;

  Users({
    required this.name,
    required this.email,
    required this.dateCreation ,
    this.id ,
    required this.image
  });
  AddImage(){
    return {
     'image': image
    };
  }
  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
        name: json['name'],
        image: (json['image']),
        email: json['email'],
        dateCreation:  json['dateCreation'].toDate(),
        id: json['id']);

  }

  toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'dateCreation' : dateCreation,
      'image': image
    };
  }



}