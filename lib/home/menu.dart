
import 'dart:ui';
import 'detail1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        flexibleSpace: Container(
          padding: const EdgeInsets.fromLTRB(10, 40,10, 0),
          child: Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(

                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 220,
                height: 50,
                decoration:  const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(40), ),


                ),

                child : IconButton(
                  onPressed: null,
                  icon: Row(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(padding : EdgeInsets.fromLTRB(0, 0, 20, 0) ,child: SvgPicture.asset("assets/icons/Search Icon.svg")),
                      Text('Search product ' , style: TextStyle(color: Colors.black54),)
                    ],
                  ),
                ),
              ),
              Container(
                width: 55,
                height: 50,

                decoration:  const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20), ),
                ),
                child: IconButton(icon : SvgPicture.asset("assets/icons/Cart Icon.svg") ,
                  onPressed: null ,) ,


              ),
              Container(
                  width: 55,
                  height: 50,

                  decoration:  const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20), ),
                  ),
                  child:IconButton(onPressed: null ,
                      icon: SvgPicture.asset("assets/icons/Bell.svg"))

              ),


            ],

          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height:110 ,
                //width: 500,
                margin: EdgeInsets.symmetric(  vertical : 30 , horizontal: 20),
                //padding: EdgeInsets.symmetric(  vertical : 20 , horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20), ),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [
                        Colors.deepPurple,
                        Colors.deepPurpleAccent,

                      ],
                    )
                ),

                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Container(
                      height: 30,
                     padding: EdgeInsets.fromLTRB(40, 0, 40, 0)  ,
                      child: Text("A summer surprise " , style: TextStyle(color: Colors.white ,fontSize: 12 , height: 2),),
                    ),
                    Container(

                      padding: EdgeInsets.symmetric(  vertical : 0 , horizontal: 40),

                      child: Text("cashBack 20%  " , style: TextStyle(color: Colors.white , fontSize: 35),),)


                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 2 , horizontal: 12),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(

                        children: [
                          Container(

                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color : Colors.deepOrange.shade50,
                              borderRadius: BorderRadius.circular(10 )
                            ),
                              child:SvgPicture.asset("assets/icons/Flash Icon.svg" ,
                                cacheColorFilter: true,)
                          ),
                          Text(" flash " ,
                            style: TextStyle(color: Colors.black54 ,height: 2 ,  ) ) ,
                          Text("deal" ,
                              style: TextStyle(color: Colors.black54 ,height: 1,  ) ,textAlign: TextAlign.start, ) ,
                        ],
                      ) ,

                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color : Colors.deepOrange.shade50,
                                  borderRadius: BorderRadius.circular(10 )
                              ),
                              child:SvgPicture.asset("assets/icons/Bill Icon.svg" ,
                                cacheColorFilter: true,)
                          ),
                          Text("Bill" , style: TextStyle(color: Colors.black54 ,height: 2),)
                        ],
                      ) ,
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color : Colors.deepOrange.shade50,
                                  borderRadius: BorderRadius.circular(10 )
                              ),
                              child:SvgPicture.asset("assets/icons/Game Icon.svg" ,
                                cacheColorFilter: true,)
                          ),
                          Text("Game" , style: TextStyle(color: Colors.black54 ,height: 2),)
                        ],
                      ) ,
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color : Colors.deepOrange.shade50,
                                  borderRadius: BorderRadius.circular(10 )
                              ),
                              child:SvgPicture.asset("assets/icons/Gift Icon.svg" ,
                                cacheColorFilter: true,)
                          ),
                          Text("Daily" , style: TextStyle(color: Colors.black54 ,height: 2),),
                          Text("Gift" , style: TextStyle(color: Colors.black54 ,height: 1),)
                        ],
                      ) ,
                      Column(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color : Colors.deepOrange.shade50,
                                  borderRadius: BorderRadius.circular(10 )
                              ),
                              child:SvgPicture.asset("assets/icons/Discover.svg" ,
                                cacheColorFilter: true,)
                          ),
                          Text("More" , style: TextStyle(color: Colors.black54 ,height: 2),)
                        ],
                      ) ,

                    ],
                  ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(10 , 20 , 0 ,2),
                child: Column(
                  children: [
                    Container(
                      padding :EdgeInsets.symmetric(vertical:  2 , horizontal: 20) ,
                      child : Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Special For You" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                          Text("See More " ,style: TextStyle(fontSize: 15 , color: Colors.grey.shade400),),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical:  15 , horizontal: 10),
                      height: 130,
                     // color : Colors.red,
                      //width: double.infinity,
                      child: ListView(
                        itemExtent: 270,
                        // This next line does the trick.
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 4, 0),
                          child: Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("SmartPhone ",
                              textAlign: TextAlign.start,
                                style: TextStyle(height: 2.5, color: Colors.white , fontSize: 24, fontWeight:FontWeight.bold ),
                              ),
                              Text("18 Bonds ",
                                textAlign: TextAlign.start,
                                style: TextStyle(height: 1, color: Colors.white , fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(1, 1), // changes position of shadow
                                ),
                              ],
                                borderRadius: BorderRadius.circular(30 ),
                              image: DecorationImage(image:  AssetImage("assets/images/Image Banner 2.png"),
                                fit: BoxFit.fill,


                                opacity: 0.6 ,

                              ),
                              color : Colors.black.withAlpha(200),

                            ),

                            margin: const EdgeInsets.fromLTRB(10 , 0,5 ,0 ),

                          ),
                          Container(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX:0, sigmaY: 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 4, 0),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Fashion ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(height: 2.5, color: Colors.white , fontSize: 24, fontWeight:FontWeight.bold ),
                                    ),
                                    Text("18 Bonds ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(height: 1, color: Colors.white , fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            width: 200,
                            margin: const EdgeInsets.fromLTRB(10 , 0,5 ,0 ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(1, 1), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30 ),
                              image: DecorationImage(image:  AssetImage("assets/images/Image Banner 3.png"),
                                fit: BoxFit.cover,


                                opacity: 0.6 ,

                              ),
                              color : Colors.black.withAlpha(200),

                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10 , 0,0 ,0 ),
                            width: 300,

                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 2,
                                  offset: Offset(1, 1), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(30 ),
                              image: DecorationImage(image:  AssetImage("assets/images/Image Banner 3.png"),
                                fit: BoxFit.fill,


                                opacity: 0.6 ,

                              ),
                              color : Colors.black.withAlpha(200),

                            ),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(20, 0, 4, 0),
                                child: Column(

                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Fashion ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(height: 2.5, color: Colors.white , fontSize: 24, fontWeight:FontWeight.bold ),
                                    ),
                                    Text("18 Bonds ",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(height: 1, color: Colors.white , fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                  margin: const EdgeInsets.fromLTRB(10 , 10 , 0 ,0),
                child: Column(
                  children: [
                    Container(
                      padding :EdgeInsets.symmetric(vertical:  0 , horizontal: 20) ,
                      child : Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Populair Product" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),
                          Text("See More " ,style: TextStyle(fontSize: 15 , color: Colors.grey.shade400),),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical:  20 , horizontal: 20),
                      height: 150,

                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          ElevatedButton(
                            autofocus: false,
                            style: ButtonStyle(
                              shadowColor:MaterialStateProperty.all(
                                const Color(00),

                              ),

                              backgroundColor: MaterialStateProperty.all(
                                  const Color(00),

                            ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.fromLTRB(0, 0, 0, 0)
                              )
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, '/Detail1');
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical:  0 , horizontal: 5),
                              width: 150,

                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),

                                image: DecorationImage(image: AssetImage(
                                  "assets/images/Image Popular Product 1.png"
                                ),
                                )
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                shadowColor:MaterialStateProperty.all(
                                  const Color(00),

                                ),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(00)),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0)
                                )

                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical:  0 , horizontal: 5),
                              width: 150,

                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),

                                  image: DecorationImage(image: AssetImage(
                                      "assets/images/Image Popular Product 2.png"
                                  ),
                                  )
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                shadowColor:MaterialStateProperty.all(
                                  const Color(00),

                                ),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(00)),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.fromLTRB(0, 0, 0, 0)
                                )

                            ),
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical:  0 , horizontal: 5),
                              width: 150,

                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(30),

                                  image: DecorationImage(image: AssetImage(
                                      "assets/images/Image Popular Product 3.png"
                                  ),
                                  )
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
