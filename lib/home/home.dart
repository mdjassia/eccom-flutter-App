import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu.dart';
import 'package:ecom/auth.dart';
import 'profile.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final User? user = Auth().currentUser ;
  Future<void> signOut ()async{
    await Auth().signOut();
  }

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  final List<Widget> _widgetOptions = <Widget>[
    Menu() ,

    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Profie( )
  ];
  @override

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget  build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),

      bottomNavigationBar: Container(
        height: 70,
    decoration:  const BoxDecoration(
    borderRadius: BorderRadius.only(
    topRight: Radius.circular(40), topLeft: Radius.circular(40)),
    boxShadow: [
    BoxShadow(color: Colors.grey, spreadRadius: 0, blurRadius: 2, blurStyle : BlurStyle.outer),
    ],
    ),
    child:ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),

          child:  BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        selectedIconTheme: const IconThemeData(color: Colors.orange  , ),
        selectedLabelStyle:TextStyle(fontWeight: FontWeight.w900 , fontSize: 20 , height: 0.9) ,




        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,




        items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: SvgPicture.asset(
         "assets/icons/Shop Icon.svg",

          colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),

        ),
          activeIcon: SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
            colorFilter: ColorFilter.mode(Colors.orange, BlendMode.srcIn),

          ),
            label : "." ,



        ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                colorFilter: ColorFilter.mode(Colors.orange, BlendMode.srcIn),

              ),
              label: '.'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",

                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn)
              ),
              activeIcon: SvgPicture.asset (
                "assets/icons/Chat bubble Icon.svg",
                colorFilter: ColorFilter.mode(Colors.orange, BlendMode.srcIn),

              ),
              label: '.'
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/User.svg",
                colorFilter: ColorFilter.mode(Colors.grey, BlendMode.srcIn),

              ),
              activeIcon: SvgPicture.asset(
                "assets/icons/User.svg",
                colorFilter: ColorFilter.mode(Colors.orange, BlendMode.srcIn),

              ),
              label: '.'
          ),



    ],

      )
    )) );
  }
}
