import 'package:flutter/material.dart';
import 'splashes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'splash.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);


  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  PageController controller = PageController();
  List<Splashes> list = [Splashes(text: "Welcome to Tokoto, Let’s shop!", image: "assets/images/splash_1.png"),
    Splashes(text:  "We help people conect with store \naround United State of America", image: "assets/images/splash_2.png"),
    Splashes(text:  "We show the easy way to shop. \nJust stay at home with us", image: "assets/images/splash_3.png"),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
          children:[
            PageView(
              controller: controller,
              children: list.map((e) => Splash(
                splash: e,
              )).toList(),
            ),
            Container(
                alignment: const Alignment(0,0.75),
                child : SmoothPageIndicator(controller: controller, count: 3 , effect:   ExpandingDotsEffect(
                    dotHeight: 9,
                    dotWidth:9,
                    activeDotColor: Colors.orange.shade700
                ),)
            ),
          ]
      ),
      bottomNavigationBar: Container(
        height: 55 ,
        //width: 50,

        margin: const  EdgeInsets.fromLTRB(50 ,0 ,50 ,70),
        child: ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/Widget_Tree');
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
            child: const  Text('Continuer ', style: TextStyle(fontSize: 18 , color: Colors.white),)
        ),
      ),
    );
  }
}
