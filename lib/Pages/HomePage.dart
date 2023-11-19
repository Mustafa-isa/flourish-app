import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = const [
    Icon(
      Icons.favorite,
      size: 30,
      color: Colors.white,
    ),
    Icon(Icons.info_sharp, size: 30, color: Colors.white),
    Icon(Icons.home, size: 30, color: Colors.white),
    Icon(Icons.verified_user_rounded, size: 30, color: Colors.white),
    Icon(Icons.production_quantity_limits, size: 30, color: Colors.white),
  ];
  int index = 2;
  routeTo() {
    if (index == 2) {
      Navigator.pushNamed(context, "/home");
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
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
              routeTo();
            },
          )
        },
      ),
    );
  }
}
