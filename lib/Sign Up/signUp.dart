

import 'package:ecom/Sign%20In/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:ecom/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class signUp extends StatefulWidget {

  final Function? toggleView   ;
  signUp ({ this.toggleView});

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
//-------------------------------------------------------------------------------------------[



  InputDecoration deco =  InputDecoration(
  contentPadding: const EdgeInsets.fromLTRB(30,20,50,20), //Change this value to custom as you like
  isDense: true,
    floatingLabelBehavior: FloatingLabelBehavior.always,
  //contentPadding:EdgeInsets.all(10), ,
  border: const OutlineInputBorder(
  //borderSide: BorderSide(color: Colors.black12),
  borderRadius: BorderRadius.all(Radius.circular(35)),
  gapPadding: 5
  ),
  labelStyle: const TextStyle(
      fontSize: 20 ,
      color: Colors.black38 ,
      fontWeight: FontWeight.w500
  ),

  hintText: 'Enter ur email adress' ,
  hintStyle: const TextStyle(
  color:Colors.black12
  ),
  suffixIcon: Container(margin :const EdgeInsets.fromLTRB(0, 0, 30, 0),child: const Icon(Icons.email_outlined , color: Colors.black12,size: 25,)),

  label: Container(
  padding: const EdgeInsets.symmetric(vertical:0 , horizontal:10),
  child: const Text('Email')

  ),
   );


  String? errorMessage = '';
  bool isLogin = true ;
  final TextEditingController _controllerEmail = TextEditingController() ;
  final TextEditingController _controllerPassWord = TextEditingController() ;
  final TextEditingController _controllerName = TextEditingController() ;
 // final TextEditingController _controllerPhoto = TextEditingController() ;

  Future<void> createUserWithEmailPassword() async{

    try{
      await Auth().createUserWithEmailAndPassword(
        email : _controllerEmail.text ,
        password : _controllerPassWord.text,
        name : _controllerName.text,
        //photo: _controllerPhoto.text
      );
    } on FirebaseAuthException catch (e){
      setState(() {
        errorMessage = e.message;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      //resizeToAvoidBottomInset: true,
      
      appBar: AppBar(
        title:const  Text("Sign Up", style: TextStyle(color: Colors.grey),),
        centerTitle: true ,
        backgroundColor: Colors.grey[50],
        elevation: 0,
      ),
      body:  SingleChildScrollView(

        child: Center(
          child:   Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
            children: [
               const SizedBox(height: 30,),
               const Text("Register Account ",
              style:  TextStyle(
                color: Colors.black ,
                fontSize: 32,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height: 14,),
              const Text('Complete your details or continue \n with social media ',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 16 ,
                  height: 1.4

                ),
                textAlign: TextAlign.center
              ),

              //
              // -----------------------------------------------------------------

              Padding(
                padding: const EdgeInsets.fromLTRB( 30,50 ,30, 10),
                child: TextField(
                    controller: _controllerEmail,
                  decoration: deco
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,20 ,30, 10),
                child: TextField(
                  controller: _controllerPassWord ,
                    decoration: deco.copyWith(
                      hintText: 'Enter your password' ,
                      suffixIcon: Container(margin :const EdgeInsets.fromLTRB(0, 0, 30, 0),child: const Icon(Icons.lock , color: Colors.black12,size: 25,)),
                      label:const  Text('Password')
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30,20 ,30, 10),
                child: TextField(
                  controller: _controllerName,
                    decoration: deco.copyWith(
                        hintText: 'UserName' ,
                        suffixIcon: Container(margin :const EdgeInsets.fromLTRB(0, 0, 30, 0),child: const Icon(Icons.lock , color: Colors.black12,size: 25,)),
                        label: const Text('UserName')
                    )
                ),

              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(30,20 ,30, 10),
              //   child: TextField(
              //       controller: _controllerPhoto ,
              //       decoration: deco.copyWith(
              //           hintText: 'Enter Url Image' ,
              //           suffixIcon: Container(margin :const EdgeInsets.fromLTRB(0, 0, 30, 0),child: const Icon(Icons.lock , color: Colors.black12,size: 25,)),
              //           label:const  Text('Image')
              //       )
              //   ),
              // ),
              Text( errorMessage =='' ? '' : 'heuum $errorMessage' ),
              TextButton(onPressed: (){  widget.toggleView!() ;
              }, child: Text('se connecter')),
              Container(
                height: 65,
                width: 320,

                margin: const  EdgeInsets.fromLTRB(0 ,45 ,0 ,0),
                child: ElevatedButton(
                    onPressed: (){
                       createUserWithEmailPassword() ;
                       },
                    // style: ElevatedButton.styleFrom(
                    //   primary: Colors.orange, // Background color
                    //   onPrimary: Colors.black, // text color
                    //   //shape: OutlinedBorder.lerp( null, null  ,  40)
                    //   //shape: MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) ))
                    // ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(const Color(0xFFF57C00)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(40) ))
                    ),
                    child: const  Text('Continue ', style: TextStyle(fontSize: 20 , color: Colors.white),)
                ),
              ),
              Container(height: 50),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical : 0,horizontal :120),
              //   child:
            Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    IconButton(


                        onPressed: ()=>{},
                        icon: SvgPicture.asset(
                          "assets/icons/facebook-2.svg" ,
                          colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                          height: 25,)
                    ),IconButton(
            onPressed: ()=>{},
                        icon:  SvgPicture.asset(
                          "assets/icons/twitter.svg" ,
                            //colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
                          cacheColorFilter: true,
                          height: 25,

                        ),
        ),


                    IconButton(
                        onPressed: ()=>{

                        },
                        icon:  SvgPicture.asset(
                          "assets/icons/google-icon.svg" ,

                          height: 25,
                          cacheColorFilter: true ,
                        )
                    ),

                  ]

                ),
              //
              Container(height: 20),
              const Text('By continuing your confirm that you agree \n with our terms and conditions ' ,
                style:  TextStyle(
                  color: Colors.black38,
                  fontSize: 14 ,

                ),
                textAlign: TextAlign.center,
              )
              //-------------------------------------------------------------------
            ],
            
          ),
        ),
        


      ),


    );
  }
}
