import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Detail1 extends StatefulWidget {
  const Detail1({Key? key}) : super(key: key);

  @override
  State<Detail1> createState() => _Detail1State();
}
var PrimaryColor = (Colors.white)  ;
var imageNum = 1 ;

class _Detail1State extends State<Detail1> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      body:
         Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                color: Colors.transparent
              ),
              width: double.infinity,
              padding: PrimaryColor == Colors.white ? EdgeInsets.symmetric(vertical:60  , horizontal: 60) :EdgeInsets.symmetric(vertical:10  , horizontal: 0) ,

                child: ColorFiltered(

                  colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.hue),
                  child: PrimaryColor == Colors.white ? imageNum == 1 ? Image.asset("assets/images/ps4_console_white_1.png",
                    height: 190,
                    fit: BoxFit.contain,
                  ) :  imageNum == 2 ?   Image.asset("assets/images/ps4_console_white_2.png",
                fit: BoxFit.contain,
                    height:190,
                ) : imageNum == 4 ?   Image.asset("assets/images/ps4_console_white_4.png",
                fit: BoxFit.contain,
                    height:190,
                ) :Image.asset("assets/images/ps4_console_white_3.png",
                    fit: BoxFit.contain,
                    height:220,
                  ) : imageNum == 1 ? Image.asset("assets/images/ps4_console_blue_1.png",
                    fit: BoxFit.contain,
                    height: 269,
                  ) : imageNum == 4 ? Image.asset("assets/images/ps4_console_blue_4.png",
                    fit: BoxFit.contain,
                    height: 269,
                  ) : imageNum == 2 ?   Image.asset("assets/images/ps4_console_blue_2.png",
                    fit: BoxFit.fitHeight,
                    height: 250,

                  ) :Image.asset("assets/images/ps4_console_blue_3.png",
                    fit: BoxFit.fitHeight,
                    height: 250,


                  ),
                ),
              ),

      Positioned(
          height: 40,
          width: 40,
          top: 10,
          left: 15,
          child:  Container(
            alignment: Alignment.center,
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFFFFFFF),
            ),
            child: IconButton(
              onPressed :  (){
                Navigator.pop(context);
            },
                icon : Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.grey,
                  size:25 ,
                )
              ),
            ),
          ) ,
      Positioned(
        height: 30,
        width: 50,
        top: 10,
        left:320,
        child:  Container(
          alignment: Alignment.center,
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            shape: BoxShape.rectangle,
            color: Color(0xFFFFFFFF),
          ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal:5 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Text("4.5" , style: TextStyle(fontWeight: FontWeight.bold),),
                  SvgPicture.asset(
                      "assets/icons/Star Icon.svg" ,
                  ),
                ],
              ),
            )
        )


      ),
           Positioned(
             top: 240,
               left:68 ,

               child: Row(


             children: [
               Container(

                 child: ElevatedButton(

                   style: ButtonStyle(
                     padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0 , horizontal: 0)),
                       shadowColor:MaterialStateProperty.all(
                         const Color(00),

                       ),

                       backgroundColor: MaterialStateProperty.all(
                         const Color(00),

                       ),

                   ),
                   onPressed: (){
                    setState(() {
                      imageNum = 1 ;
                    });
                   },
                   child: Container(

                     width: 50,
                     height: 50,

                     decoration: BoxDecoration(
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(10),
                         border: Border.all(color :  imageNum == 1 ?   Colors.orange.shade800  : Colors.transparent ),
                         image: DecorationImage(image: PrimaryColor == Colors.white ? AssetImage(
                             "assets/images/ps4_console_white_1.png"
                         ) : AssetImage(
                             "assets/images/ps4_console_blue_1.png"
                         ),
                         )
                     ),
                   ),
                 ),
               ),
               ElevatedButton(

                 style: ButtonStyle(
                   padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0 , horizontal: 0)),
                   //padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10 , horizontal: 2)),
                     shadowColor:MaterialStateProperty.all(
                       const Color(00),

                     ),

                     backgroundColor: MaterialStateProperty.all(
                       const Color(00),

                     ),

                 ),
                 onPressed: (){
                  setState(() {
                    imageNum = 2 ;
                  });
                 },
                 child: Container(

                   width: 50,
                   height: 50,

                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color :  imageNum == 2 ?   Colors.orange.shade800  : Colors.transparent ),
                       image: DecorationImage(image: PrimaryColor == Colors.white ? AssetImage(
                           "assets/images/ps4_console_white_2.png"
                       ) : AssetImage(
                           "assets/images/ps4_console_blue_2.png"
                       ),
                       )
                   ),
                 ),
               ),
               ElevatedButton(

                 style: ButtonStyle(
                   padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0 , horizontal: 0)),
                   //padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10 , horizontal: 2)),
                     shadowColor:MaterialStateProperty.all(
                       const Color(00),

                     ),

                     backgroundColor: MaterialStateProperty.all(
                       const Color(00),

                     ),

                 ),
                 onPressed: (){
                  setState(() {
                    imageNum = 3;
                  });
                 },
                 child: Container(

                   width: 50,
                   height: 50,

                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color :  imageNum == 3 ?   Colors.orange.shade800  : Colors.transparent ),
                       image: DecorationImage(image: PrimaryColor == Colors.white ? AssetImage(
                           "assets/images/ps4_console_white_3.png"
                       ) : AssetImage(
                           "assets/images/ps4_console_blue_3.png"
                       ),
                       )
                   ),
                 ),
               ), ElevatedButton(

                 style: ButtonStyle(
                   padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0 , horizontal: 0)),
                   //padding : MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10 , horizontal: 2)),
                     shadowColor:MaterialStateProperty.all(
                       const Color(00),

                     ),

                     backgroundColor: MaterialStateProperty.all(
                       const Color(00),

                     ),

                 ),
                 onPressed: (){
                  setState(() {
                    imageNum = 4;
                  });
                 },
                 child: Container(

                   width: 50,
                   height: 50,

                   decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(10),
                       border: Border.all(color :  imageNum == 4 ?   Colors.orange.shade800  : Colors.transparent ),
                       image: DecorationImage(image: PrimaryColor == Colors.white ? AssetImage(
                           "assets/images/ps4_console_white_4.png"
                       ) : AssetImage(
                           "assets/images/ps4_console_blue_4.png"
                       ),
                       )
                   ),
                 ),
               ),


             ],
           )),
            Scroll(),
            Scrolled(),

            Scrolled1()

          ],
        ),

      ) ,

    );

  }
     Scroll(){
    return DraggableScrollableSheet(
      initialChildSize: 0.60,
        maxChildSize: 1,
        minChildSize: 0.6,
        builder : (context , scrollController)
    {
      return Container(
        height: 200,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight:  Radius.circular(40),
          ),
          color: Colors.white ,
        ),
        child: Container(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(30 , 30 , 30 , 20),
                child: Text("Wireless controller for PS4" ,
                style: TextStyle(
                  fontWeight: FontWeight.w600 ,
                  fontSize: 22
                ),),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                    ),
                    color: Colors.deepOrange.shade50,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: SvgPicture.asset("assets/icons/Heart Icon_2.svg",
                    color: Colors.red,
                    ),
                  ),
                )
                  
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30 , 15 , 55 , 10),
                child: Text("Wireless controller for PS4 gives u what you want in ur gaming from over precision control ur games to sharing",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey ,
                    height: 1.5
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30 , 0 , 50 , 5),
                child: Text("See More Details >"  ,

                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.orange.shade800 ,

                  ),
                ),
              ),

            ],
          ),
        ) ,

      );
    }
    );
  }
  Scrolled(){
    return DraggableScrollableSheet(
        initialChildSize: 0.25,
        maxChildSize: 1,
        minChildSize: 0.1,

        builder : (context , scrollController)
    {


      return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20 , 20, 30 , 20),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 5 , 0),
                    height: PrimaryColor == Colors.purple? 45 : 30 ,
                    width: PrimaryColor == Colors.purple ? 45 : 30 ,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        PrimaryColor = Colors.purple;
                      });
                          },


                        key: Key("1"),
                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.purple),
                          shape: MaterialStateProperty.all(CircleBorder(

                          ))
                        ),
                        child:Text("")
                    ),
                  ) ,
                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 5 , 0),
                    height:PrimaryColor == Colors.red ? 45 : 30 ,

                    width: PrimaryColor == Colors.red ? 45 : 30 ,
                    child: ElevatedButton(onPressed: (){

                      setState(() {
                        PrimaryColor = Colors.red ;
                      });
                    },
                        key: Key("2"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(CircleBorder(

                          ))
                        ),
                        child:Text("")
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 5 , 0),

                    height: PrimaryColor == Colors.brown.shade300 ? 45 : 30 ,
                    width: PrimaryColor == Colors.brown.shade300? 45 : 30 ,
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        PrimaryColor = Colors.brown.shade300 ;
                      });},

                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.brown.shade300),
                          shape: MaterialStateProperty.all(CircleBorder(
                          //   side: BorderSide(color: Colors.brown , width: 2 , strokeAlign: BorderSide.strokeAlignOutside , style: BorderStyle.solid)
                          // ))
                        ),
                          )
    ),
    child: Text("",
                        // child:Center(
                        //   child: Icon( Icons.check ,
                        //     color: PrimaryColor == Colors.brown.shade300 ? Colors.brown : Colors.transparent ,
                        //
                        //   ),
                        ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 , 0, 5 , 0),
                    height: PrimaryColor == Colors.white ? 45 : 30 ,
                    width: PrimaryColor == Colors.white ? 45: 30 ,
                    child: ElevatedButton(
                        onPressed:(){
                          setState(() {
                            PrimaryColor =  Colors.white ;
                          });
                        } ,
                        key: Key("4"),

                        style: ButtonStyle(

                          backgroundColor: MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(CircleBorder(

                          ))
                        ),
                       child: Text(''),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      );
    } ) ;
  }
  Scrolled1(){
      return DraggableScrollableSheet(
        initialChildSize: 0.15,
        maxChildSize: 1,
        minChildSize: 0,

        builder : (context , scrollController)
        {
          return Container(
            clipBehavior: Clip.hardEdge,
            padding: EdgeInsets.symmetric(vertical: 25 , horizontal:60 ),
            decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                )
            ),
            child: ElevatedButton(onPressed: (){},

              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),),
                  backgroundColor:  MaterialStateProperty.all(Colors.orange.shade800)
              ),
              child: Text("Add To Chart",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),) ,
            ) ,
          );
        }
        ) ;
  }
  }

