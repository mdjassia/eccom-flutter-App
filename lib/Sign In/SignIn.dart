import 'package:ecom/Sign%20Up/signUp.dart';
import 'package:flutter/material.dart';
import 'package:ecom/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  final Function? toggleView   ;
  SignIn ({ this.toggleView});


  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  String? errorMessage = '';
   bool log = true ;

  final TextEditingController _controllerEmail = TextEditingController() ;
  final TextEditingController _controllerPassWord = TextEditingController() ;

  Future<void> signInUserWithEmailPassword() async{

    try{
      await Auth().signInUserWithEmailAndPassword(
          email : _controllerEmail.text ,
          password : _controllerPassWord.text
      );
    } on FirebaseAuthException catch (e){
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration deco = InputDecoration(
      contentPadding: const EdgeInsets.fromLTRB(30, 20, 50, 20),
      //Change this value to custom as you like
      isDense: true,
      floatingLabelBehavior: FloatingLabelBehavior.always,
      //contentPadding:EdgeInsets.all(10), ,
      border: const OutlineInputBorder(
        //borderSide: BorderSide(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(35)),
          gapPadding: 5
      ),
      labelStyle: const TextStyle(
          fontSize: 20,
          color: Colors.black38,
          fontWeight: FontWeight.w500
      ),

      hintText: 'Enter ur email address',
      hintStyle: const TextStyle(
          color: Colors.black12
      ),
      suffixIcon: Container(margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: const Icon(
            Icons.email_outlined, color: Colors.black12, size: 25,)),

      label: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: const Text('Email')

      ),
    );
    bool? check2 = false;

    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Signe In ", style: TextStyle(
                color: Colors.grey,
              ),),
              centerTitle: true,
              backgroundColor: Colors.grey[50],
              //shadowColor: Colors.transparent,
              elevation: 0,
            ),
            body: SingleChildScrollView(
                child: Center(
                  child: Column(


                    children: [
                      const SizedBox(height: 30,),
                      const Text(" Welcome Back ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      const SizedBox(height: 14,),
                      const Text(
                        "sign in with your email and password \n or continue with social media",
                        style: TextStyle(
                            color: Colors.black38,
                            fontSize: 16,
                            height: 1.4
                        ),
                        textAlign: TextAlign.center,
                      ),


                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 100, 30, 10),

                        child: TextField(
                          controller: _controllerEmail,
                            decoration: deco
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 10),
                        child: TextField(
                          controller: _controllerPassWord,
                            decoration: deco.copyWith(
                                hintText: 'Enter your password',
                                suffixIcon: Container(margin: const EdgeInsets
                                    .fromLTRB(0, 0, 30, 0), child: const Icon(
                                  Icons.lock, color: Colors.black12,
                                  size: 25,)),
                                label: const Text('Password')
                            )
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(20, 5, 30, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [

                                Checkbox(
                                  //title: const Text('7'),
                                  value: check2,
                                  //tristate: true,
                                  activeColor: Colors.lightBlue,
                                  checkColor: Colors.white,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      check2 = value!;
                                    });
                                  },
                                ),
                                const Text("Remember me ", style: TextStyle(color: Colors.grey),)
                              ],
                            ),

                            const Text("I forgot my password ",
                              style: TextStyle(shadows: [
                                Shadow(
                                    color: Colors.grey,
                                    offset: Offset(0, -5))
                              ],
                                color: Colors.transparent ,
                              decorationColor: Colors.grey,
                              decoration: TextDecoration.underline ,
                              )

                             )

                          ],
                        ),
                      ),


                      Container(
                        height: 65,
                        width: 320,

                        margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                        child: ElevatedButton(
                            onPressed: () {
                              signInUserWithEmailPassword() ;
                              // if(errorMessage==''){
                              //   Navigator.pushNamed(context, '/Home') ;
                              // }
                              // else{
                              //   print("kk");
                              //   print(errorMessage);
                              // }
                             //
                            },

                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFFF57C00)),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            40)))
                            ),
                            child: const Text('Continue ',
                              style: TextStyle(fontSize: 20, color: Colors
                                  .white),)
                        ),
                      ),
                      Text(errorMessage==''? '': "$errorMessage") ,
          TextButton(onPressed: (){
            widget.toggleView!() ;
          }, child: Text('creer un compte')),

                    ],
                  ),
                )
            ),
          );
        });
  }
}
