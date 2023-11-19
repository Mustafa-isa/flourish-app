import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flourish/Pages/About.dart';
import 'package:flourish/Pages/Contact.dart';
import 'package:flourish/Pages/Favourite.dart';
import 'package:flourish/Pages/Home.dart';
import 'package:flourish/Pages/UserInfo.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  const RoutePage({super.key});

  @override
  State<RoutePage> createState() => _RouteState();
}

class _RouteState extends State<RoutePage> {
  final items = const [
    Icon(
      Icons.favorite,
      size: 30,
      color: Colors.white,
    ),
    Icon(Icons.info_sharp, size: 30, color: Colors.white),
    Icon(Icons.home, size: 30, color: Colors.white),
    Icon(Icons.verified_user_rounded, size: 30, color: Colors.white),
    Icon(Icons.contact_page, size: 30, color: Colors.white),
  ];
  final List<Widget> _pages = [
    FavPage(),
    AboutPage(),
    HomePage(),
    UserInfo(),
    ContactPage()
  ];
  int index = 2;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    
      return Scaffold(
        body: _pages[ index],
        bottomNavigationBar: CurvedNavigationBar(
          items: items,
          index: index,
          color: Color.fromARGB(255, 76, 4, 164),
          buttonBackgroundColor: Color.fromARGB(66, 51, 2, 142),
          backgroundColor: Colors.white,
          onTap: (selectedIndex) => {
            setState(
              () {
                index = selectedIndex;
              },
            )
          },
        ),
      );
  }
}