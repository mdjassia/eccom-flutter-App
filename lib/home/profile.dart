import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:ecom/auth.dart';
import 'package:flutter_svg/svg.dart';

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

  Widget _userId() {
    return  Text(user?.email ?? "user email " );
  }
  Widget _signoutButtom() {
    return  ElevatedButton(onPressed: signOut,child : Text('sign out'));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Profile" , style: TextStyle(color: Colors.black45 , fontWeight: FontWeight.w600),
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
                    Image.asset(
                      "assets/images/Profile Image.png" ,
                    ),
                    Positioned(
                      left: 80,
                        top: 100,
                        child: MaterialButton(
                          clipBehavior: Clip.hardEdge,
                          onPressed: () {},
                          color: Colors.grey.shade100,
                          textColor: Colors.grey,
                          child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
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
