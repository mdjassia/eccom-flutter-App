import 'package:flutter/material.dart';
//import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'splashes.dart';


class Splash extends StatelessWidget {
  final Splashes splash ;
  const Splash({required this.splash}) ;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.fromLTRB(20, 70, 20, 0),

      child: Column(
          //mainAxisAlignment: MainAxisAlignment,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [

             Container(
               margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
               child:  Text("TOKOTO",style:
             TextStyle(
                  color: Colors.orange[700],
                  fontSize: 40,
                  fontWeight: FontWeight.bold ,
                ),

            ),
             ),
            Center(
                child: Text("${splash.text}",
                  style:const  TextStyle(fontSize: 18 , color: Colors.black38 , fontWeight: FontWeight.w400 , height: 1.4 ),
                  textAlign: TextAlign.center,
                  softWrap: false ,
                )
            ) ,

            Container(

              margin:const EdgeInsets.fromLTRB(0, 70, 0, 0),

              width: 300,
              height: 300,
              child:  Image.asset('${splash.image}'),
            ),

          ],
        ),
    );
  }
}

