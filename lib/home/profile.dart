import'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecom/auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'loadingPage.dart';
import '../Users.dart';

class Profie extends StatefulWidget {
  const Profie({super.key });

  @override
  State<Profie> createState() => _ProfieState();
}

class _ProfieState extends State<Profie> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  final FirebaseFirestore  db = FirebaseFirestore.instance;
  final User? user = Auth().currentUser ;

  File? _photo;
  bool load= true ;
  String imageUrl ="" ;

  final ImagePicker _picker = ImagePicker();

  Future imgFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
         uploadFile();
      } else {
        print('No image selected.');
      }
    });
  }

  Future imgFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);


    setState(() {
      if (pickedFile != null) {
        _photo = File(pickedFile.path);
        uploadFile();
           } else {
      print('No image selected.');
      }
    });
  }

  Future uploadFile() async {
    if (_photo == null) return;
    final fileName = basename(_photo!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(_photo!);
      String url = ( await ref.getDownloadURL());




       await db.collection('Users').doc(user?.email).update({ 'image' : url } ).then(
      (value) => log("Appointment Updated Successfully!"),
      onError: (e) => log("Error updating appointment: $e"));
       getImage();



    } catch (e) {
    print('error occured $e');
    }
  }


  Future<void> getImage ()async {

    var quary = await db.collection("Users").doc(user?.email).get().then(
          (querySnapshot) {
        var ss =  querySnapshot.data() ;
        final  appt =
        Users.fromJson(ss!);
        print("///////////////////////////////////// Successfully completed");
        print(appt.email);
        print(appt.image.toString());

        return appt.image.toString();

      },
      onError: (e) => print(" ///////////////////e  /////////// Error completing: $e"),
    );
    setState(() {
      imageUrl = quary.toString();
      load = false ;
    });

  }

  Future<void> signOut ()async{
    await Auth().signOut();
  }

@override
  void initState() {
    // TODO: implement initState
    getImage();
    super.initState(
    );
  }

  @override

  Widget build(BuildContext context) {
    if (load ) {
      return ProgressIndicatorExample();
    } else {
      return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          user?.displayName ?? "user email ", style: TextStyle(color: Colors.black45 , fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 120),
                child: Stack(
                  children: [
                     ClipRRect(
                       borderRadius: BorderRadius.circular(150),
                       child:  Image.network(
                         imageUrl,
                         width: 150,
                         height: 150,
                         fit: BoxFit.fitHeight,
                       ) ,),

                    Positioned(
                      left: 80,
                        top: 100,
                        child: MaterialButton(
                          clipBehavior: Clip.hardEdge,
                          onPressed: () {

                              _showPicker(context);

                          },
                          color: Colors.grey.shade100,
                          textColor: Colors.grey,
                          child:  SvgPicture.asset("assets/icons/Camera Icon.svg"),
                          padding: EdgeInsets.all(10),
                          shape: CircleBorder(),
                        ),
                        )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Column(
                  children: [

                    Container(
                      margin : EdgeInsets.only(bottom: 20) ,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          shadowColor:  MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0, right: 20),
                                 child: SvgPicture.asset("assets/icons/User Icon.svg" ,color: Colors.orange.shade800,height: 25,),
                               ),
                                Text("My Account" , style: TextStyle(
                                  color: Colors.grey.shade600 ,
                                  fontSize: 16
                                ),),
                             ],
                           ),
                            Container(
                              padding: const EdgeInsets.only( right: 20),
                              child: SvgPicture.asset("assets/icons/arrow_right.svg" , width: 10,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.only(bottom: 20) ,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          shadowColor:  MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0, right: 20),
                                 child: SvgPicture.asset("assets/icons/Bell.svg" ,color: Colors.orange.shade800,height: 25,),
                               ),
                                Text("Notifications" , style: TextStyle(
                                  color: Colors.grey.shade600 ,
                                  fontSize: 16
                                ),),
                             ],
                           ),
                            Container(
                              padding: const EdgeInsets.only( right: 20),
                              child: SvgPicture.asset("assets/icons/arrow_right.svg" , width: 10,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.only(bottom: 20) ,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          shadowColor:  MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0, right: 20),
                                 child: SvgPicture.asset("assets/icons/Settings.svg" ,color: Colors.orange.shade800,height: 25,),
                               ),
                                Text("Settings" , style: TextStyle(
                                  color: Colors.grey.shade600 ,
                                  fontSize: 16
                                ),),
                             ],
                           ),
                            Container(
                              padding: const EdgeInsets.only( right: 20),
                              child: SvgPicture.asset("assets/icons/arrow_right.svg" , width: 10,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.only(bottom: 20) ,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          shadowColor:  MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0, right: 20),
                                 child: SvgPicture.asset("assets/icons/Question mark.svg" ,color: Colors.orange.shade800,height: 25,),
                               ),
                                Text("Help Center" , style: TextStyle(
                                  color: Colors.grey.shade600 ,
                                  fontSize: 16
                                ),),
                             ],
                           ),
                            Container(
                              padding: const EdgeInsets.only( right: 20),
                              child: SvgPicture.asset("assets/icons/arrow_right.svg" , width: 10,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin : EdgeInsets.only(bottom: 20) ,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      width: double.infinity,
                      height: 80,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.transparent),
                          shadowColor:  MaterialStateProperty.all(Colors.transparent),
                        ),
                        onPressed: signOut ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(left: 0, right: 20),
                                 child: SvgPicture.asset("assets/icons/Log out.svg" ,color: Colors.orange.shade800,height: 25,),
                               ),
                                Text("Log Out " , style: TextStyle(
                                  color: Colors.grey.shade600 ,
                                  fontSize: 16
                                ),),
                             ],
                           ),
                            Container(
                              padding: const EdgeInsets.only( right: 20),
                              child: SvgPicture.asset("assets/icons/arrow_right.svg" , width: 10,),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
    }
  }
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: const Icon(Icons.photo_library),
                    title: const Text('Gallery'),
                    onTap: () {
                      imgFromGallery();
                      Navigator.of(context).pop();
                    }),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Camera'),
                  onTap: () {
                    imgFromCamera();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }
}
